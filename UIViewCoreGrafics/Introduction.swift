//
//  Introduction.swift
//  UIViewCoreGrafics
//
//  Created by Вячеслав Квашнин on 17.09.2022.
//

import UIKit

@IBDesignable
class Introduction: UIView {

    override func draw(_ rect: CGRect) {
        
        let rect1 = CGRect(x: 0, y: 0, width: rect.width, height: rect.height / 2)
        let rect2 = CGRect(x: 0, y: rect.height / 2, width: rect.width, height: rect.height / 2)
        
        drawCircular(in: rect1)
        drawLines(in: rect2)

    }
    
    private func drawCircular(in rect: CGRect) {
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        let radius = (rect.width / 2) - 100
        let path = UIBezierPath(arcCenter: center,
                                radius: radius,
                                startAngle: 0,
                                endAngle: CGFloat.pi,
                                clockwise: false)
        path.lineWidth = 4
        let color = UIColor.red
        color.setStroke()
        path.stroke()
    }
    
    private func drawLines(in rect: CGRect) {
        
    }
}

// PART 1

//        let pathRect3 = CGRect(x: 0, y: 0, width: rect.width,
//                               height: rect.height / 2)
//        let path3 = UIBezierPath(roundedRect: pathRect3, cornerRadius: 0)
//        path3.addClip()
//
//        let pathRect1 = CGRect(x: 50, y: 50, width: rect.width - 100, height: rect.height - 100)
//        let path1 = UIBezierPath(roundedRect: pathRect1, cornerRadius: 24)
//        let color1 = UIColor.red
//        color1.setFill()
//        path1.fill()
//
//        let pathRect2 = CGRect(x: 100, y: 100, width: rect.width - 200, height: rect.height - 200)
//        let path2 = UIBezierPath(roundedRect: pathRect2, cornerRadius: 24)
//        let color2 = UIColor.blue
//        color2.setFill()
//        path2.fill()
