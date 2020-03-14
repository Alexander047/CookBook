//
//  NewsView.swift
//  CookBook
//
//  Created by Alexander on 02.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct NewsView: View {
    
    @EnvironmentObject var navigationState: NavigationState
    
    let newsList = News.allNews
    
    var body: some View {
        NavigationView {
            List {
                ForEach(newsList) { news in
                    NavigationLink(destination: LazyView(NewsDetailView(news: news).environmentObject(self.navigationState))) {
                        VStack {
                            HStack {
                                Text(news.title)
                                    .font(.system(size: 21,
                                                  weight: .semibold,
                                                  design: .serif))
                                Spacer()
                            }.padding(.top, 8)
                            HStack {
                                Text(news.subtitle)
                                    .font(.system(size: 11))
                                Spacer()
                                if news.recepieId != nil {
                                    Text("🥣")
                                }
                            }.padding(.vertical, 8)
                        }
                    }
                }
            }
            .navigationBarTitle("Новости")
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    
    static var previews: some View {
        NewsView().environmentObject(NavigationState())
    }
}
