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
    
    
    public var caseName: String {
        
        return "\(self)"
        
    }
    
    public static var list: [String] {
        
        return Array(self.cases()).map( { $0.caseName })
        
    }
    
    public static var allValues: [Self] {
        
        return Array(self.cases())
        
    }
    
    public static func caseName(_ index: Int) -> String? {
        
        guard (index >= 0 ) && (index < Self.list.count)
            
            else { return nil }
        
        return Self.list[index]
        
    }
    
}

enum Condition:String, EnumCollection {
    
    case Mint
    
    case Used
    
    case SlightlyDamaged
    
}

enum Category: String, EnumCollection {
    
    case Comic
    
    case Prints
    
    case Statues
    
    case Figures
    
    case Vinyl
    
}

enum Location: String, EnumCollection {
    
    case Home
    
    case Storage
    
    case OnDisplay
    
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


