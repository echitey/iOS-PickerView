//
//  ViewController.swift
//  PickerView
//
//  Created by Yawo Echitey on 4/5/17.
//  Copyright © 2017 Echitey. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickedLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var options = ["Spider Man", "Iron Man", "Batman", "Superman", "Hulk", "Karley Quinn", "Joker", "Will Smith", "Jake Miller", "Witt Lowry", "Hendersin", "AstroBoy" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        options = options.sorted{$0 < $1}
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
        let sel = pickerView.selectedRow(inComponent: 0)
        pickedLabel.text = options[sel]
    
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return options.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let title = options[row]
        return title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selected = options[row]
        
        pickedLabel.text = selected
    }

}

