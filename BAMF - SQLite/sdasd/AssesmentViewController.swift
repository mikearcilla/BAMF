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

class AssesmentViewController: UIViewController {
    
    @IBOutlet weak var customlabel: UILabel!
    @IBOutlet weak var datelabel: UILabel!
    @IBOutlet weak var fatigueStat: UILabel!
    
    //variables updated from the TESTViewController
    var subjectpick = ""
    var fatstat = ""
    
    //placeholder variables for the save funcntion = [subject / fatigue status / date / time taken]
    var subject = ""
    var stat = ""
    var DATE = ""
    var TIME = ""
    
    
    override func viewDidLoad() {  // Do any additional setup after loading the view.
        super.viewDidLoad()
        
        print(subjectpick)// test benchmark
       
        //update current date
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        let dateTimeString = formatter.string(from: currentDate)
        datelabel.text = dateTimeString
        
        /*
         
         //update the fatigue status on assesment page w/ green or red text
         if fatstat = ("Fatigued") {
            fatigueStat.textColor = UIColor.red
            self.fatigueStat.text = ""
         }else{
            fatigueStat.textColor = UIColor.green
            self.fatigueStat.text = ""
         }
         */
        
        customlabel.text = subjectpick
      
    }
    
    @IBAction func saveButton(){
        //set to history page and pass parameters from here to a "database"
        
        
        
        guard let vc = storyboard?.instantiateViewController(identifier: "HIS_VC") as? HistoryViewController else{
            return
        }
        guard let vc2 = storyboard?.instantiateViewController(identifier: "MAIN") as? ViewController else{
            return
        }
        
        present(vc, animated: true)
        

        
        //passes all the data collected from the test and puts it in an class array defined in the view controller 
        vc2.createArray(subject: subjectpick, fatstat: fatstat, time: TIME, date: DATE)
        
       // NotificationCenter.default.post(name: NSNotification.Name(rawValue: "refresh"), object: nil, userInfo: nil)
       // self.dismiss(animated: true, completion: nil)
        
       
    }

}


