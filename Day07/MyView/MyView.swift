//
//  MyView.swift
//  MyView
//
//  Created by Mac on 2017. 3. 22..
//  Copyright © 2017년 Hanna. All rights reserved.
//
//a.removeAllAnimations()
//a.displayIfNeeded()
import UIKit

class MyView : UIView {
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext() // 캔버스역할
        
        self.drawGradate(context!)
        self.drawLine(context!)
        self.drawArc(context!)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.setNeedsDisplay() // 새로 다시 그려줌
    }
    
    func color() -> UIColor {
        let red = CGFloat(arc4random_uniform(255)) / 255
        let blue = CGFloat(arc4random_uniform(255)) / 255
        let green = CGFloat(arc4random_uniform(255)) / 255
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        return color
    }
    
    func drawGradate(_ context : CGContext) {
        let start = CGPoint(x: bounds.midX, y: bounds.minY)
        let end = CGPoint(x: bounds.midX, y: bounds.maxY)
        let colors = [color().cgColor, color().cgColor] as CFArray
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        let gradient = CGGradient(colorsSpace: colorSpace, colors: colors as CFArray, locations: nil)
        
        context.drawLinearGradient(gradient!, start: start, end: end, options: [])
    }
    
    func drawLine(_ context : CGContext) {
        for _ in 0..<10 {
            let path = UIBezierPath() // <- 직선이나 곡선을 그려줄수 있음
            
            let start = CGPoint(x: Int(arc4random_uniform(375)), y: Int(arc4random_uniform(667)))
            let end = CGPoint(x: Int(arc4random_uniform(375)), y: Int(arc4random_uniform(667)))
            
            path.move(to: start)
            path.addLine(to: end)
            path.stroke()
            context.addPath(path.cgPath)
            context.setStrokeColor(color().cgColor)
        }
    }
    
    func drawArc(_ context : CGContext) {
        for _ in 0..<10 {
            let path = UIBezierPath()
            
            let center = CGPoint(x: Int(arc4random_uniform(375)), y: Int(arc4random_uniform(667)))
            let radius = CGFloat(Int(arc4random_uniform(187)))
            let startRadian = Double(arc4random_uniform(360)) * (M_PI * 2 / 360)
            
            path.move(to: center)
            path.addArc(withCenter: center, radius: radius, startAngle: CGFloat(startRadian), endAngle: CGFloat(startRadian+M_PI_4), clockwise: true)
            path.stroke()
            path.addLine(to: center)
            path.stroke()
            // 랜덤 색
            color().setFill()
            path.fill()
            
            context.addPath(path.cgPath)
        }
    }
    
}


