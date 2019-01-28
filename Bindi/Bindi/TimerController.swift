//
//  TimerController.swift
//  Bindi
//
//  Created by Gorkem on 2018-12-30.
//  Copyright © 2018 Star. All rights reserved.
//

import Foundation

public class TimerController {
    var totalTime: Int = 0
    var extTime: Int = 0
   
    init(totalTime:Int, extTime: Int) {
        self.totalTime = 0
        self.extTime = 0
    }
    init(totalTime:Int) {
        self.totalTime = 0
    }
    init() {
        
    }
    
    func getTotalTime () -> Int {
        return totalTime
    }
    func setTotalTime (totalTime: Int) {
        self.totalTime = totalTime
    }
    
    func getExtTime () -> Int {
    return extTime
    }
    func setExtTime (extTime: Int){
        self.extTime = extTime
    }
    
        
    }

