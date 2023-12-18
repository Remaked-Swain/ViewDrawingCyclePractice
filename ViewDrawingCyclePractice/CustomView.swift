//
//  CustomView.swift
//  ViewDrawingCyclePractice
//
//  Created by Swain Yun on 12/18/23.
//

import UIKit

final class CustomView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("cv1 draw")
    }
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        print("cv1 set needs layout")
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
        print("cv1 set needs display")
    }
    
    override func layoutIfNeeded() {
        //
    }
    
//    override func displayIfNeeded() {
//        //
//    }
    
    override func updateConstraints() {
        super.updateConstraints()
        print("cv1 update constraints")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("cv1 layout subviews")
    }
}
