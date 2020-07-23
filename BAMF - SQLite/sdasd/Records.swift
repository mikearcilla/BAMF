//
//  Records.swift
//  sdasd
//
//  Created by Michael Arcilla on 2020-07-22.
//  Copyright © 2020 Michael Arcilla. All rights reserved.
//


/*
 createArray fucntion is definied in ViewController.swift for global use... hopefully will apply to other class instances
 */


import Foundation
import UIKit

class Records {
    
    var subject: String
    var fatstat: String
    var time: String
    var date: String
    
    init(subject: String, fatstat: String, time: String, date: String){
        self.subject = subject
        self.fatstat = fatstat
        self.time = time
        self.date = date
        
    }
    
      
}
