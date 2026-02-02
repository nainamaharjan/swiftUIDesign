//
//  RefreshableView.swift
//  SIM App
//
//  Created by Rajan Maharjan on 23/06/2024.
//

import SwiftUI

struct RefreshableView<Content: View>: UIViewRepresentable {
    var content: Content
    var onRefresh: (() async -> Void)? = nil

    func makeCoordinator() -> Coordinator {
        Coordinator(onRefresh: onRefresh)
    }

    func makeUIView(context: Context) -> UIScrollView {
        let scrollView = UIScrollView()
        
        scrollView.backgroundColor = .clear // Ensure the scroll view's background color is clear
        scrollView.refreshControl = UIRefreshControl()
        scrollView.refreshControl?.addTarget(context.coordinator, action: #selector(Coordinator.handleRefreshControl), for: .valueChanged)

        // Hide scroll indicators
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false

        let hostingController = UIHostingController(rootView: content)
        hostingController.view.backgroundColor = .clear // Ensure the hosting controller's view background color is clear
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false

        scrollView.addSubview(hostingController.view)

        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: scrollView.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            hostingController.view.widthAnchor.constraint(equalTo: scrollView.widthAnchor) // Ensures the width matches the scrollView's width
        ])

        return scrollView
    }

    func updateUIView(_ uiView: UIScrollView, context: Context) {
        if let subview = uiView.subviews.first {
            subview.layoutIfNeeded()
            uiView.contentSize = subview.intrinsicContentSize
        }
    }

    class Coordinator: NSObject {
        var onRefresh: (() async -> Void)?

        init(onRefresh: (() async -> Void)?) {
            self.onRefresh = onRefresh
        }

        @objc func handleRefreshControl(sender: UIRefreshControl) {
            Task {
                await self.onRefresh?()
                await sender.endRefreshing()
            }
        }
    }
}


