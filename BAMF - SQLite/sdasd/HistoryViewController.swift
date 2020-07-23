//
//  HistoryViewController.swift
//  sdasd
//
//  Created by Michael Arcilla on 2020-07-15.
//  Copyright © 2020 Michael Arcilla. All rights reserved.
//

import UIKit
import SQLite3
import SQLite

class HistoryViewController: UIViewController {

    @IBOutlet weak var datelabel: UILabel!
    
    
    override func viewDidLoad() {  // Do any additional setup after loading the view.
        super.viewDidLoad()
        
        //update current date
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        
        let dateTimeString = formatter.string(from: currentDate)

        datelabel.text = dateTimeString
       
    }

}
