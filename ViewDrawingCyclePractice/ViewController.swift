//
//  ViewController.swift
//  ViewDrawingCyclePractice
//
//  Created by Swain Yun on 12/18/23.
//

import UIKit

final class ViewController: UIViewController {
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("mo-fucker", for: .normal)
        button.addTarget(self, action: #selector(removeFromSuperView), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var cv1: CustomView!
    private var cv2: CustomView2!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cv1 = CustomView(frame: .zero)
        cv1.translatesAutoresizingMaskIntoConstraints = false
        cv1.backgroundColor = .yellow
        cv2 = CustomView2(frame: .zero)
        cv2.translatesAutoresizingMaskIntoConstraints = false
        cv2.backgroundColor = .red
        self.view.addSubview(cv1)
        self.view.addSubview(cv2)
        self.cv2.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cv1.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            cv1.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            cv1.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            cv1.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            cv2.topAnchor.constraint(equalTo: cv1.topAnchor),
            cv2.bottomAnchor.constraint(equalTo: cv1.bottomAnchor),
            cv2.leadingAnchor.constraint(equalTo: cv1.leadingAnchor),
            cv2.trailingAnchor.constraint(equalTo: cv1.trailingAnchor),
        ])
        
        print("view did load")
    }
    
    @objc private func call() {
        cv1.setNeedsDisplay()
        cv2.setNeedsDisplay()
    }
    
    @objc private func removeFromSuperView() {
//        cv1.setNeedsUpdateConstraints()
        cv1.setNeedsLayout()
//        cv1.setNeedsDisplay()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        print("view is appearing")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        print("view update contraints")
    }
}

class WhiteView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        print("white draw")
    }
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        print("white set needs layout")
    }
    
    override func setNeedsDisplay() {
        super.setNeedsDisplay()
        print("white set needs display")
    }
    
    override func layoutIfNeeded() {
        //
    }
    
//    override func displayIfNeeded() {
//        //
//    }
    
    override func updateConstraints() {
        super.updateConstraints()
        print("white update constraints")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print("white layout subviews")
    }
}
