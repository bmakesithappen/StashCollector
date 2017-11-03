//
//  Items.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/29/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit



enum Condition {
    
    case New
    
    case Used
    
    case Other
}

enum Category: Int  {
    
    case Comic = 0
    
    case Prints = 1
    
    case Statues = 2
    
    case Figures = 3
    
    case Vinyl = 4
    
    static var count: Int { return Category.Vinyl.hashValue + 1 }
    
    var description: String {
        switch self {
        case .Comic   : return "Comic"
        case .Prints  : return "Prints"
        case .Statues : return "Statue"
        case .Figures : return "Figures"
        case .Vinyl   : return  "Vinyl"
            
        }
        
    }
    // TODO: Reimimplination to only write "Comics" once.  Enum = Array
    
    static var list: [String] {
        return ["Comics", "Prints", "Statues", "Figures", "Vinyl"]
        }
}

    
    class Items: NSObject {
        
        // TODO: fix values for Condition enum (better descriptive cases *near mint etc.
        
        var name: String?
        var purchasePrice: Float?
        var location: String?  // Do we want to have a set location option (home vs storage vs etc)
        var url: String?
        var condition: Condition?
        var type:Category?
        
        init(name: String? = nil, purchasePrice: Float? = nil, location: String? = nil, url: String? = nil, condition:Condition? = nil, type:Category?) {
            self.name = name
            self.purchasePrice = purchasePrice
            self.location = location
            self.url = url
            self.condition = condition
            self.type = type
            super.init()
        }
        
}


