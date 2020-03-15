//
//  ContentView.swift
//  CookBook
//
//  Created by Alexander on 02.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject var navigationState: NavigationState
    
    var body: some View {
        TabView(selection: $navigationState.selectedTab) {
            NewsView()
                .environmentObject(navigationState)
                .tag(NavigationState.Tab.news)
                .tabItem {
                    VStack {
                        Image(systemName: "doc.richtext")
                        Text("Новости")
                    }
            }
            RecepiesView()
                .environmentObject(navigationState)
                .tag(NavigationState.Tab.recepies)
                .tabItem {
                    VStack {
                        Image(systemName: "flame")
                        Text("Рецепты")
                    }
            }
            ProfileView(user: User.defaultUser)
                .tag(NavigationState.Tab.profile)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
