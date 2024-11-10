//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by Md Alishan Ali on 09/11/24.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home";
    
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.titleTextAttributes=[
            NSAttributedString.Key.foregroundColor: UIColor.green
        
        ]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView().tag("Home")
                .tabItem {
                    Image(systemName: "house")
                }
            
            HistoricDataView().tag("Historic").tabItem {
                Image(systemName: "chart.line.uptrend.xyaxis")
            }
        }
    }
}

#Preview {
    FitnessTabView()
}