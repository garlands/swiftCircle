//
//  circleView.swift
//  swiftCircle
//
//  Created by Masahiro Tamamura on 2019/10/06.
//  Copyright © 2019 Masahiro Tamamura. All rights reserved.
//

import UIKit

class circleView: UIView {
    var circleLayer1: CAShapeLayer!
    var circleLayer2: CAShapeLayer!
    var circleLayer3: CAShapeLayer!
    var circleLayer4: CAShapeLayer!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = UIColor.clear
        
        let halfSize:CGFloat = self.frame.size.height / 2.0
        let desiredLineWidth:CGFloat = 1
        let circlePath1 = UIBezierPath(
            arcCenter: CGPoint(x:halfSize,y:halfSize),
            radius: CGFloat( halfSize - (desiredLineWidth/2) ),
            startAngle: CGFloat(0),
            endAngle:CGFloat(CGFloat.pi * 0.5),
            clockwise: true)
        
        circleLayer1 = CAShapeLayer()
        circleLayer1.path = circlePath1.cgPath
        circleLayer1.fillColor = UIColor.clear.cgColor
        circleLayer1.strokeColor = UIColor.red.cgColor
        circleLayer1.lineWidth = 5.0;
        circleLayer1.strokeEnd = 0.0
        self.layer.addSublayer(circleLayer1)

        
        
        let circlePath2 = UIBezierPath(
            arcCenter: CGPoint(x:halfSize,y:halfSize),
            radius: CGFloat( halfSize - (desiredLineWidth/2) ),
            startAngle: CGFloat(CGFloat.pi * 0.5),
            endAngle:CGFloat(CGFloat.pi),
            clockwise: true)
        
        circleLayer2 = CAShapeLayer()
        circleLayer2.path = circlePath2.cgPath
        circleLayer2.fillColor = UIColor.clear.cgColor
        circleLayer2.strokeColor = UIColor.blue.cgColor
        circleLayer2.lineWidth = 5.0;
        circleLayer2.strokeEnd = 0.0
        self.layer.addSublayer(circleLayer2)
    }
    
    func animateCircle(duration: TimeInterval) {

        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.duration = duration
        animation.fromValue = 0
        animation.toValue = 1
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        circleLayer1.strokeEnd = 1.0
        circleLayer1.add(animation, forKey: "animateCircle")

        circleLayer2.strokeEnd = 1.0
        circleLayer2.add(animation, forKey: "animateCircle")
    }
    

}
