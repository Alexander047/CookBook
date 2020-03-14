//
//  LazyView.swift
//  CookBook
//
//  Created by Alexander on 14.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
