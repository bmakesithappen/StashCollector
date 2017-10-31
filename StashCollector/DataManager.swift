//
//  DataManager.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/30/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import Foundation

class DataManager {
    
    
    static let sharedInstance = DataManager()
    
    var theList: [Items]
    
    init() {
        theList = [ ]
        
        let comic1 = Items (name: "Comic1", purchasePrice: 30.8, location: "Brooklyn", url: "httttps...", condition: .New, type: .Comic)
        
        let comic2 = Items (name: "Comic2", purchasePrice: 30.85, location: "On Display", url: "httttps...", condition: .Other, type: .Comic)
        
        let comic3 = Items (name: "Comic3", purchasePrice: 30.99, location: "Storage", url: "httttps...", condition: .New, type: .Comic)
        
        
        let print1 = Items (name: "Print1", purchasePrice: 30.29, location: "Moms House", url: "httttps...", condition: .New, type: .Comic)
        
        let print2 = Items (name: "Print2", purchasePrice: 39.80, location: "Brooklyn", url: "httttps...", condition: .Other, type: .Comic)
        
        let print3 = Items (name: "Print3", purchasePrice: 500.80, location: "Storage", url: "httttps...", condition: .New, type: .Comic)
        
        
        let bigStatue = Items (name: "BigStatue", purchasePrice: 30.80, location: "Brooklyn", url: "httttps...", condition: .New, type: .Statues)
        
        let mediumStatue = Items (name: "MediumStatue", purchasePrice: 30.80, location: "Brooklyn", url: "httttps...", condition: .New, type: .Statues)
        
        let smallStatue = Items (name: "SmallStatue", purchasePrice: 40.99, location: "Storage", url: "httttps..." , condition: .Used, type: .Statues)
        
        let figure1 = Items (name: "Figure1", purchasePrice: 50.00, location: "On Display", url: "httttps...", condition: .Used, type: .Statues)
        
        let figure2 = Items (name: "Figure2", purchasePrice: 200.01, location: "Storage", url: "httttps...", condition: .Used, type: .Statues)
        
        let figure3 = Items (name: "Figure3", purchasePrice: 150.00, location: "On Display", url: "httttps...", condition: .Used, type: .Statues)
        
        
        let blueRecord = Items (name: "BlueRecord", purchasePrice: 30.80, location: "Brooklyn", url: "httttps...", condition: .New, type: .Vinyl)
        
        let redRecord = Items (name: "RedRecord", purchasePrice: 30.80, location: "Brooklyn", url: "httttps...", condition: .New, type: .Vinyl)
        
        let greenRecord = Items (name: "GreenRecord", purchasePrice: 30.80, location: "Brooklyn", url: "httttps...", condition: .New, type: .Vinyl)
        
        
        theList.append(comic1)
        theList.append(comic2)
        theList.append(comic3)
        
        theList.append(print1)
        theList.append(print2)
        theList.append(print3)
        
        theList.append(bigStatue)
        theList.append(mediumStatue)
        theList.append(smallStatue)
        
        theList.append(figure1)
        theList.append(figure2)
        theList.append(figure3)
        
        theList.append(blueRecord)
        theList.append(redRecord)
        theList.append(greenRecord)
        
        
    }
    
}


