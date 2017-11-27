//
//  AddItemPickerViewController.swift
//  StashCollector
//
//  Created by Bernard Désert on 10/29/17.
//  Copyright © 2017 Bernard Désert. All rights reserved.
//

import UIKit


class AddItemPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var itemPicker: UIPickerView!
    
    var category: Category?
    
    var pickerData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.itemPicker.delegate = self
        self.itemPicker.dataSource = self
        
        pickerData = Category.list
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        category = Category(rawValue: pickerData[row])
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "openAddItemPickerView" {
            category = Category(rawValue: pickerData[self.itemPicker.selectedRow(inComponent: 0)])
            let destination = segue.destination as! DetailItemViewController
            destination.category = category 
            
        }
    }
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
}



