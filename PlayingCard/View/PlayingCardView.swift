//
//  PlayingCardView.swift
//  PlayingCard
//
//  Created by Alexander Abanshin on 25.05.2024.
//

import UIKit

class PlayingCardView: UIView {

 
    override func draw(_ rect: CGRect) {
//        if let contex = UIGraphicsGetCurrentContext() {
//            contex.addArc(center: CGPoint(x: bounds.midX, y: bounds.midY),
//                          radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
//            
//            contex.setLineWidth(5.0)
//            UIColor.green.setFill()
//            UIColor.red.setStroke()
//            contex.strokePath()
//            contex.fillPath()
//        }
        let  path = UIBezierPath()
        path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY),
                    radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
        path.lineWidth = 5.0
        UIColor.green.setFill()
        UIColor.red.setStroke()
        path.stroke()
        path.fill()
    }
    

}
