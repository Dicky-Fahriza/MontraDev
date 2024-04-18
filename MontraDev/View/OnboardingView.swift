//
//  OnboardingView.swift
//  MontraDev
//
//  Created by MacBook Pro on 18/04/24.
//

import SwiftUI

struct OnboardingView: View {
    var tabs: [Onboarding] = Onboarding.data
    let dotindicator = UIPageControl.appearance()
    
    @State private var selectedTab = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                ForEach(tabs) { tab in
                    OnboardingSingleView(content: tab)
                        .tag(tab.tag)
                }
            }
//            .onAppear{
//                dotindicator.currentPageIndicatorTintColor = UIColor(named: "Violet100")
//                dotindicator.pageIndicatorTintColor = UIColor(named: "Violet20")
//            }
//            
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeOut, value: selectedTab)
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            CustomDotIndicator(count: tabs.count, selectedTab: $selectedTab)
                .padding([.top, .bottom], 10)
        }
    }
}

#Preview {
    OnboardingView()
}
