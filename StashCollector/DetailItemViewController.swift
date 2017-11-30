//
//  AddItemDataSetViewController.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/29/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit

class DetailItemViewController: UIViewController {
    
    @IBOutlet weak var conditionPicker: UIPickerView!
    
    @IBOutlet weak var locationPicker: UIPickerView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var nameField: UITextField!
    
    var category: Category?
    
    var items: Items?
    
    let conditionPickerDelegate = PickerDelegate(pickerData: Condition.list)
    let locationPickerDelegate = PickerDelegate(pickerData: Location.list)
    
    override func viewDidLoad() {
        self.conditionPicker.delegate = conditionPickerDelegate
        self.conditionPicker.dataSource = conditionPickerDelegate
        
        self.locationPicker.delegate = locationPickerDelegate
        self.locationPicker.dataSource = locationPickerDelegate
        
        super.viewDidLoad()
        
        categoryLabel.text = category?.caseName
        
        items = Items(type: category)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "SavedItemSegue" {
            //      category = Category(rawValue: pickerData[self.itemPicker.selectedRow(inComponent: 0)])
            if let items = items {
                items.name = nameField?.text
                
                DataManager.sharedInstance.theList.append(items)

            }
        }
        
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














