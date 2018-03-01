//
//  Sale.swift
//  RealmOptionalBug
//
//  Created by Gustavo Sgarbi Campos on 1/3/18.
//  Copyright © 2018 Gustavo Sgarbi Campos. All rights reserved.
//

import Foundation
import RealmSwift

class Sale: Object {
    @objc dynamic var id: String?
    @objc dynamic var coreSale: CoreSale?
}

class CoreSale: Object {
    var soldPrice: RealmOptional<Double> = RealmOptional<Double>()
}
