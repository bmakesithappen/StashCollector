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
    // TODO: When "save" is tapped we want to show the StashListViewController and that specific item added "When I save it I want to see it in the big list"
    
    
    @IBOutlet weak var conditionPicker: UIPickerView!
    
    @IBOutlet weak var locationPicker: UIPickerView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    var category: Category?
    
    let conditionPickerDelegate = PickerDelegate(pickerData: Condition.list)
    let locationPickerDelegate = PickerDelegate(pickerData: Location.list)
    
    override func viewDidLoad() {
        self.conditionPicker.delegate = conditionPickerDelegate
        self.conditionPicker.dataSource = conditionPickerDelegate
        
        self.locationPicker.delegate = locationPickerDelegate
        self.locationPicker.dataSource = locationPickerDelegate
        
        super.viewDidLoad()
        
        categoryLabel.text = category?.caseName

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














