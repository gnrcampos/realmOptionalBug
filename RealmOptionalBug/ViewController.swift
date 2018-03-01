//
//  ViewController.swift
//  RealmOptionalBug
//
//  Created by Gustavo Sgarbi Campos on 1/3/18.
//  Copyright © 2018 Gustavo Sgarbi Campos. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let realm = try? Realm(), let sale = realm.objects(Sale.self).first {
            print(sale.coreSale?.soldPrice.value)
            print(sale.coreSale!.soldPrice.value)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

