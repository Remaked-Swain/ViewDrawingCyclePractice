//
//  CustomView2.swift
//  ViewDrawingCyclePractice
//
//  Created by Swain Yun on 12/18/23.
//

import UIKit

final class CustomView2: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("cv2 draw")
    }
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        print("cv2 layout")
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
        print("cv2 display")
    }
    
    override func layoutIfNeeded() {
        //
    }
    
//    override func displayIfNeeded() {
//        //
//    }
    
    override func updateConstraints() {
        super.updateConstraints()
        print("cv2 update constraints")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("cv2 layout subviews")
    }
}
