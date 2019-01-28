//
//  ViewController.swift
//  Bindi
//
//  Created by Gorkem on 2018-12-27.
//  Copyright © 2018 Star. All rights reserved.
//

import UIKit

class DateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var DateLabel: UILabel!
    
    @IBOutlet weak var Circle: UIView!
    
    
    func DrawCircle() {
        
        let circleCenter = Circle.center
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: (Circle.bounds.width/2 - 5), startAngle: -CGFloat.pi/2, endAngle: (2 * CGFloat.pi), clockwise: true)
        
        let CircleLayer = CAShapeLayer()
        CircleLayer.path = circlePath.cgPath
        CircleLayer.strokeColor = UIColor.orange.cgColor
        CircleLayer.lineWidth = 2
        CircleLayer.strokeEnd = 0
        CircleLayer.fillColor = UIColor.clear.cgColor
        CircleLayer.lineCap = CAShapeLayerLineCap.round
        
        let Animation = CABasicAnimation(keyPath: "strokeEnd")
        Animation.duration = 1.5
        Animation.toValue = 1
        Animation.fillMode = CAMediaTimingFillMode.forwards
        Animation.isRemovedOnCompletion = false
        
        CircleLayer.add(Animation, forKey: nil)
        Circle.layer.addSublayer(CircleLayer)
        Circle.layer.backgroundColor = UIColor.clear.cgColor
        
    }
    
}
