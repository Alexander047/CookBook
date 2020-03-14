//
//  RecepiesView.swift
//  CookBook
//
//  Created by Alexander on 02.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct RecepiesView: View {
    
    @EnvironmentObject var navigationState: NavigationState
    
    let recepiesList = Recepie.allRecepies
    
    @State var selectedRecepie: Recepie? {
        didSet {
            shouldNavigate = selectedRecepie != nil
        }
    }
    @State var shouldNavigate: Bool = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: LazyView(RecepieDetailView(recepie: self.selectedRecepie)), isActive: $shouldNavigate) {
                    EmptyView()
                }
                List {
                    ForEach(recepiesList) { recepie in
                        ZStack {
                            Image(recepie.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Rectangle()
                                .fill(Color.black)
                                .opacity(0.3)
                            Text(recepie.title)
                                .font(.system(size: 34,
                                              weight: .semibold,
                                              design: .serif))
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                        }.onTapGesture {
                            self.selectedRecepie = recepie
                        } // ZStack
                    } // ForEach
                } // List
            }
            .navigationBarTitle("Рецепты")
        }.onAppear {
            self.selectedRecepie = self.recepiesList.first(where: { $0.id == self.navigationState.selectedRecepie })
        }
    }
}

struct RecepiesView_Previews: PreviewProvider {
    static var previews: some View {
        RecepiesView()
    }
}
