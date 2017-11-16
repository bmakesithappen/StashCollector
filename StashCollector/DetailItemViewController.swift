//
//  AddItemDataSetViewController.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/29/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class DetailItemViewController: UIViewController {
    
    // TODO: Have value save from DataPicker and display in this viewController.  
    // TODO: Save Button connects to what action / page ??
    
    
    @IBOutlet weak var conditionPicker: UIPickerView!
    
    @IBOutlet weak var locationPicker: UIPickerView!
    
    let conditionPickerDelegate = PickerDelegate(pickerData: Condition.list)
    let locationPickerDelegate = PickerDelegate(pickerData: Location.list)
    
    override func viewDidLoad() {
        self.conditionPicker.delegate = conditionPickerDelegate
        self.conditionPicker.dataSource = conditionPickerDelegate
        
        self.locationPicker.delegate = locationPickerDelegate
        self.locationPicker.dataSource = locationPickerDelegate
        
        super.viewDidLoad()

    }

}

class PickerDelegate: NSObject, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let pickerData: [String]
    init(pickerData: [String]) {
        self.pickerData = pickerData
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
}














