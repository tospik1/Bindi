//
//  ViewController.swift
//  Bindi
//
//  Created by Gorkem on 2018-12-27.
//  Copyright © 2018 Star. All rights reserved.
//

// ff8a00

import UIKit
import Foundation
import MBCircularProgressBar

var extraTimer = TimerController(totalTime: 0, extTime: 0)
var totalTimer = TimerController(totalTime: 0)

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        if extraTimer.getExtTime() > 0 {
            progress?.value = CGFloat(extraTimer.getExtTime())
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var initialTime : Date!
    var counter = 0
    
    @IBAction func bigButton(_ sender: Any) {
        
        if(counter%2==0){
            initialTime = Date()
        }
        
        if(counter%2 == 1){
            let elapsed = Date().timeIntervalSince(initialTime)
            let time = Int(elapsed)
            totalTimer.setTotalTime(totalTime: time)
        }
        
        counter=counter+1
        progress?.value = CGFloat(totalTimer.totalTime)
        amk()
    }
    
    func amk () {
        extraTimer.setExtTime(extTime: Int((progress?.value)!)) // abort
    }
    
    @IBOutlet weak var progress: MBCircularProgressBarView?
    
}
