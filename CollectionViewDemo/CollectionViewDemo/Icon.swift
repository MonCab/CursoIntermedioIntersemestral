//
//  Icon.swift
//  CollectionViewDemo
//
//  Created by 2020-2 on 15/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import Foundation

struct Icon {
    var name: String = ""
    var price: Double = 0.0
    var isFeatured: Bool = false
    
    init(name: String, price: Double, isFeatured: Bool) {
        self.name = name
        self.price = price
        self.isFeatured = isFeatured
    }
}
