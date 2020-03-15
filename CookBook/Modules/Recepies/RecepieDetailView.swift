//
//  RecepieDetailView.swift
//  CookBook
//
//  Created by Alexander on 14.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct RecepieDetailView: View {
    
    @EnvironmentObject var navigationState: NavigationState
    
    let recepie: Recepie?
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(recepie?.title ?? "")
                        .font(.system(size: 21,
                                      weight: .semibold,
                                      design: .serif))
                    Spacer()
                }
                Image(recepie?.imageName ?? "")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 8)
                Text(recepie?.body ?? "")
                    .font(.body)
                    .padding(.top, 16)
            } // VStack
                .padding(EdgeInsets(top: 20,
                                    leading: 16,
                                    bottom: 20,
                                    trailing: 16))
        } // ScrollView
            .navigationBarTitle("", displayMode: .inline)
    }
}

struct RecepieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecepieDetailView(recepie: Recepie.allRecepies[0])
    }
}
