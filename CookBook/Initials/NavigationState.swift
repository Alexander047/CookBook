//
//  NavigationState.swift
//  CookBook
//
//  Created by Alexander on 10.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import Foundation

class NavigationState: ObservableObject {
    enum Tab: Int {
        case news
        case recepies
        case profile
    }
    
    @Published var selectedTab: Tab = .news
    
    @Published var selectedRecepie: Int? = nil {
        didSet {
            selectedTab = .recepies
        }
    }
}
