//
//  ViewController.swift
//  sdasd
//
//  Created by Michael Arcilla on 2020-07-14.
//  Copyright © 2020 Michael Arcilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //inintialize the record class array for later implementation
    var record: [Records] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func LoginButton(){
        
        guard let vc = storyboard?.instantiateViewController(identifier: "TEST_VC") as? TESTViewController else{
                return
        }
        present(vc, animated: true)
    }

    //creates array where it appends the template from the assesment controller
    func createArray(subject: String, fatstat: String, time: String, date: String) -> [Records]{
        
        var temprecord : [Records] = []
        
        let record1 = Records(subject: subject, fatstat: fatstat, time: time, date: date)
        
        temprecord.append(record1)
        
        return temprecord
    }
    

        
}




