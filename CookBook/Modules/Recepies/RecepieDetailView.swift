//
//  RecepieDetailView.swift
//  CookBook
//
//  Created by Alexander on 14.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import SwiftUI

struct RecepieDetailView: View {
    
    let recepie: Recepie?
    
    var body: some View {
        guard let recepie = recepie else { return Text("Ошибка: рецепт не найден") }
        return Text(recepie.title)
    }
}

struct RecepieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecepieDetailView(recepie: Recepie.allRecepies[0])
    }
}
