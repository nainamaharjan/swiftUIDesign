//
//  CustomDynamicTableView.swift
//  TarmacApp
//
//  Created by Personal on 8/31/24.
//

import SwiftUI

struct CustomDynamicTableView: View {
    private let data: [(String, String, String)] = [
        ("Total Distance", "162.54 km", "150.25 km"),
        ("Total Workout Time", "3 h 51 m 15 s", "3 h 48 m 25 s"),
        ("Total Elevation Gain", "385 m", "392 m"),
        ("Highest Elevation", "224 m", "236 m"),
        ("Average Power", "169 w", "157 w"),
        ("Average Cadence", "85 rpm", "78 rpm"),
        ("Average Heart Rate", "169 bpm", "172 bpm"),
        ("Total Energy", "456 KJ", "463 KJ"),
        ("Total Energy Pods", "1.46 ep", "1.42 ep")
    ]

    var body: some View {
        VStack(spacing: 0) {
            TableViewWrapper(data: data)
                .border(Color.white, width: 0.5)
        }
        .background(Color.black)
    }
}

struct TableViewWrapper: UIViewRepresentable {
    let data: [(String, String, String)]

    func makeUIView(context: Context) -> UITableView {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
        tableView.separatorColor = .clear
        tableView.isScrollEnabled = false
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = context.coordinator
        tableView.delegate = context.coordinator
        tableView.tableFooterView = UIView() 
        return tableView
    }

    func updateUIView(_ uiView: UITableView, context: Context) {
        uiView.reloadData()
        DispatchQueue.main.async {
            uiView.invalidateIntrinsicContentSize()
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(data: data)
    }

    class Coordinator: NSObject, UITableViewDataSource, UITableViewDelegate {
        var data: [(String, String, String)]

        init(data: [(String, String, String)]) {
            self.data = data
        }

        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
            let rowData = data[indexPath.row]
            cell.configure(with: rowData, isHeader: indexPath.row == 0)
            return cell
        }
    }
}

class CustomTableViewCell: UITableViewCell {
    private let staticLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dynamicLabel1: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let dynamicLabel2: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let separatorLine1: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let separatorLine2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(stackView)
        contentView.addSubview(separatorLine1)
        contentView.addSubview(separatorLine2)
        
        stackView.addArrangedSubview(staticLabel)
        stackView.addArrangedSubview(dynamicLabel1)
        stackView.addArrangedSubview(dynamicLabel2)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            separatorLine1.widthAnchor.constraint(equalToConstant: 1),
            separatorLine1.topAnchor.constraint(equalTo: contentView.topAnchor),
            separatorLine1.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            separatorLine1.leadingAnchor.constraint(equalTo: staticLabel.trailingAnchor),
            
            separatorLine2.widthAnchor.constraint(equalToConstant: 1),
            separatorLine2.topAnchor.constraint(equalTo: contentView.topAnchor),
            separatorLine2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            separatorLine2.leadingAnchor.constraint(equalTo: dynamicLabel1.trailingAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with data: (String, String, String), isHeader: Bool) {
        staticLabel.text = data.0
        dynamicLabel1.text = data.1
        dynamicLabel2.text = data.2
        contentView.backgroundColor = isHeader ? .gray : .black
    }
}

extension UITableView {
    override open var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: self.contentSize.height)
    }
}

struct CustomDynamicTableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomDynamicTableView()
            .background(Color.black)
            .previewLayout(.sizeThatFits)
    }
}
