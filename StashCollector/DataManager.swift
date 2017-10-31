//
//  DataManager.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/30/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import Foundation

class DataManager {
    
    // TODO: Add more items to the list below 
    
    static let sharedInstance = DataManager()

    var theList: [Items]
    
    init() {
        theList = [ ]
            
      let blueRecord = Items (name: "BlueRecord", purchasePrice: 30.80, location: "Brooklyn", url: "httttps...", condition: .New, type: .Vinyl)
        
      theList.append(blueRecord)
    }
    
}


