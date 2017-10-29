//
//  Items.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/29/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class Items: NSObject {
    
    //TODOS: 1. what about photos would that be a var ? 2. considering some data types may not be requiered should we set them as options or nil (my guess yes)

    var name: String?
    var purchasePrice: String?
    var location: String?
    var url: String?
    var condition: String? // may want to change this to a drop down or a picker value (3 options new, used, etc)
  
    init(name: String? = nil, purchasePrice: String? = nil, location: String? = nil, url: String? = nil, condition:String? = nil) {
        self.name = name
        self.purchasePrice = purchasePrice
        self.location = location
        self.url = url
        self.condition = condition
        super.init()
        }

}

// adding in specific item types that subclass from Items see V2 Thoughts

class Prints: Items {

}

class Statue: Items {
    
}

class Vinyl: Items {
    
}

class Comic: Items {
    
}

class Figure: Items {

}
