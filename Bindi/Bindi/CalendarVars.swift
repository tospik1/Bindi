//
//  ViewController.swift
//  Bindi
//
//  Created by Gorkem on 2018-12-27.
//  Copyright © 2018 Star. All rights reserved.
//

import Foundation


let date = Date()
let calendar = Calendar.current

let day = calendar.component(.day , from: date)
var weekday = calendar.component(.weekday, from: date) - 1
var month = calendar.component(.month, from: date) - 1
var year = calendar.component(.year, from: date)
 
