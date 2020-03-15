
//
//  ProfileData.swift
//  CookBook
//
//  Created by Alexander on 15.03.2020.
//  Copyright © 2020 SealSoft. All rights reserved.
//

import UIKit

struct User {
    let id: Int
    let name: String
    let detail: String
    let avatar: UIImage?
}

extension User {
    static let defaultUser = User(id: 0, name: "Пан-Паныч", detail: "Очень люблю вкусно поесть, особенно после тяжелого дня ничего-не-делания! А уж если заберусь на веточку повыше, то и вовсе не могу удержаться от пожевывания сладкого бамбука 🐼", avatar: UIImage(named: "panda"))
}
