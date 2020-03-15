//
//  ProfileDetailView.swift
//  CookBook
//
//  Created by Alexander on 15.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct ProfileDetailView: View {
    
    let user: User
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text(user.name)
                        .font(.system(size: 21,
                                      weight: .semibold,
                                      design: .serif))
                    Spacer()
                }
                if user.avatar != nil {
                    Image(uiImage: user.avatar!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 8)
                }
                Text(user.detail)
                .padding(.top, 8)
            } // VStack
                .padding(EdgeInsets(top: 20,
                                    leading: 16,
                                    bottom: 20,
                                    trailing: 16))
        } // ScrollView
            .navigationBarTitle("", displayMode: .inline)
    }
}

struct ProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailView(user: User.defaultUser)
    }
}
