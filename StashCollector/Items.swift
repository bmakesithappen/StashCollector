//
//  Items.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/29/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit
import Foundation


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

enum Condition:String, EnumCollection {
    
    case Mint
    
    case Used
    
    case SlightlyDamaged
    
    public static var list: [String] {
        
        return self.allValues.map({(val) in
            
            return String(val.rawValue)
            
        })
        
    }

}

enum Category: String, EnumCollection {
    
    case Comic
    
    case Prints
    
    case Statues
    
    case Figures
    
    case Vinyl
    
    static var list: [String] {
        
        return self.allValues.map({(val) in
            
            return val.rawValue
            
        })
        
    }
    
}

enum Location: String, EnumCollection {
    
    case Home
    
    case Storage
    
    case OnDisplay
    
    static var list: [String] {
        
        return self.allValues.map({(val) in
            
            return val.rawValue
            
        })
        
    }
}



class Items: NSObject {
    
    var name: String?
    var purchasePrice: Float?
    var location: Location?
    var url: String?
    var condition: Condition?
    var type:Category?
    
    init(name: String? = nil, purchasePrice: Float? = nil, location:Location? , url: String? = nil, condition:Condition? = nil, type:Category?) {
        self.name = name
        self.purchasePrice = purchasePrice
        self.location = location
        self.url = url
        self.condition = condition
        self.type = type
        super.init()
    }
    
}


