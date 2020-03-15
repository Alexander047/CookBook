//
//  ProfileView.swift
//  CookBook
//
//  Created by Alexander on 02.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    @State var presentDetail: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        VStack {
                            HStack {
                                Text(user.name)
                                    .font(.system(size: 21,
                                                  weight: .semibold,
                                                  design: .serif))
                                Spacer()
                            }
                            Spacer()
                            HStack {
                                Button(action: {
                                    self.presentDetail = true
                                }) {
                                    Text("Подробнее")
                                }
                                Spacer()
                            }
                        } // VStack
                        Spacer()
                        if user.avatar != nil {
                            Image(uiImage: user.avatar!)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 64, height: 64, alignment: .center)
                                .clipShape(Circle())
                        }
                    } // HStack
                } // VStack
            } // ScrollView
                .padding(EdgeInsets(top: 20,
                                    leading: 16,
                                    bottom: 20,
                                    trailing: 16))
                .sheet(isPresented: $presentDetail) {
                    LazyView(ProfileDetailView(user: self.user))
            }
            .navigationBarTitle("Профиль")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.defaultUser)
    }
}
