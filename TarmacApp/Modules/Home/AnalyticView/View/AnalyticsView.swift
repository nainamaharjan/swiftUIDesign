import SwiftUI


import SwiftUI

struct AnalyticsView: View {
    @State private var selectedSegmentIndex = 0
    var segmentChangedClosure: ((Int) -> Void)?
    
    var navigateBack: NavigationBackClosure
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            AnalyticsCustomNavbar(title: "ANALYTICS", backButtonTapped: {
                navigateBack()
            })
                .frame(height: 80)
                .background(Color.clear)
                .padding(.bottom, 20)
                .padding(.trailing, 66)
                .padding(.top, 32)
            
            CustomSegmentedControl(
                selectedIndex: $selectedSegmentIndex,
                segments: ["WEEK", "MONTH", "YEAR", "LIFE"],
                segmentChangedClosure: { index in
                    segmentChangedClosure?(index)
                }
            )
            .padding(.horizontal, 0)
            .padding(.leading, 80)
            .padding(.trailing, 80)
            AnalyticsPerformanceStatusView(backButtonTapped: {
            })
            .padding(.leading, 80)
            .padding(.trailing, 80)
            
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    CustomDynamicTableView()
                        .frame(width: geometry.size.width / 2, height: geometry.size.height - 150)
                    
                    Image("analyticsDummyIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width / 2, height: geometry.size.height - 150)
                        .clipped() // Ensure the image is clipped to its frame
                }
            }
            .padding(.leading, 80)
            .padding(.trailing, 80)
            .frame(height: screenHeight * 0.6)
        }
        .background(Color.black.ignoresSafeArea())
    }
}

struct AnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsView(navigateBack: {})
            .background(Color.white)
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
