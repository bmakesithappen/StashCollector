//
//  Items.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/29/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit
import Foundation

enum Condition {
    
    case New
    
    case Used
    
    case Other
}

public protocol EnumCollection: Hashable {
    
    static func cases() -> AnySequence<Self>
    
    static var allValues: [Self] { get }
    
}

public extension EnumCollection {
    
    public static func cases() -> AnySequence<Self> {
        
        return AnySequence { () -> AnyIterator<Self> in
            
            var raw = 0
            
            return AnyIterator {
                
                let current: Self = withUnsafePointer(to: &raw) { $0.withMemoryRebound(to: self, capacity: 1) { $0.pointee } }
                
                guard current.hashValue == raw else {
                    
                    return nil
                }
                
                raw += 1
                
                return current
            }
            
        }
        
    }
    
    public static var allValues: [Self] {
        
        return Array(self.cases())
        
    }
    
}

enum Category: String, EnumCollection {
    
    case Comic
    
    case Prints
    
    case Statues
    
    case Figures
    
    case Vinyl
    
    case Test
    
    
    static var list: [String] {
        
        return self.allValues.map({(val) in
            
            return val.rawValue
            
        })
        
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


