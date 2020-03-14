//
//  NewsDetailView.swift
//  CookBook
//
//  Created by Alexander on 14.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct NewsDetailView: View {
    
    @EnvironmentObject var navigationState: NavigationState
    
    let news: News
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(news.title)
                        .font(.system(size: 21,
                                      weight: .semibold,
                                      design: .serif))
                    Spacer()
                }
                HStack {
                    Text(news.subtitle)
                        .font(Font.system(size: 11))
                    Spacer()
                }.padding(.top, 8)
                Text(news.body)
                    .font(.body)
                    .padding(.top, 16)
                if news.recepieId != nil {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 7)
                                .fill(Color.green)
                            Button(action: {
                                self.navigationState.selectedRecepie = self.news.recepieId
                            }) {
                                Text(Recepie.allRecepies.first(where: { $0.id == news.recepieId })?.title ?? "Перейти к рецепту")
                                    .accentColor(Color.white)
                            }.padding(EdgeInsets(top: 8,
                                                 leading: 12,
                                                 bottom: 8,
                                                 trailing: 12))
                        }.fixedSize(horizontal: true, vertical: true)
                        Spacer()
                    }.padding(.top, 16)
                }
                Spacer()
            } // VStack
                .padding(EdgeInsets(top: 20,
                                    leading: 16,
                                    bottom: 20,
                                    trailing: 16))
        } // ScrollView
            .navigationBarTitle("", displayMode: .inline)
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(news: News.allNews[0])
    }
}
