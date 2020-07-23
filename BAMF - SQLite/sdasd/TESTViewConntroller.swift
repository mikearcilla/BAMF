//
//  AssesmentViewController.swift
//  sdasd
//
//  Created by Michael Arcilla on 2020-07-15.
//  Copyright © 2020 Michael Arcilla. All rights reserved.
//

import UIKit
import SQLite3
import SQLite


class TESTViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var picklabel: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    var chosenSubject : String?
    var fatigueStatus : String?
    
    //The numberOfComponentsInPickerView method asks for the number of columns in your picker element.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //numberOfRowsInComponent method asks for the number of rows of data in your UIPickerView element so we return the array count
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //pickerView:titleForRow:forComponent: method asks for the data for a specific row and specific component
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let value = pickerData[row]
        chosenSubject = value
        picklabel.text = chosenSubject
        //chosenSubject = pickerData[row]
        print(chosenSubject as Any)
    }
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {  // Do any additional setup after loading the view.
        super.viewDidLoad()
        
        // //update current date // //
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        let dateTimeString = formatter.string(from: currentDate)
        datelabel.text = dateTimeString
       
        // Connect data:
        self.picker.delegate = self
        self.picker.dataSource = self
        //PICKER ITEMS FOR TESTING//
        pickerData = ["Subject 1", "Subject 2", "Subject 3", "Subject 4", "Subject 5", "Subject 6"]
       
    }
    
    //Activate TESTIGN with chosen
    @IBAction func testButton(){ //for now goes to the testing page **for matt to configure with the pytho nalgorithm
    
        guard let vc = storyboard?.instantiateViewController(identifier: "ASS_VC") as? AssesmentViewController else{
            return
        }
        
        vc.subjectpick = chosenSubject!
        /*
         write code for the python exacutable goes here
         
         if fatigued {
            update
            fatigueStatus = Fatigued
         }else{
            update
            fatigueStatus = Not Fatigued
         }
         vc.fatstat = fatigueStatus! // this passes the fatigue eval to the assesment controller 
         
         */
       
        present(vc, animated: true) // brings up the assesment controller

    }
    
    @IBAction func HISButton(){ //for now goes to the testing page **for matt to configure with the pytho nalgorithm
       
        guard let qc = storyboard?.instantiateViewController(identifier: "HIS_VC") as? HistoryViewController else{
            return
        }
        
        present(qc, animated: true)
    }


}


