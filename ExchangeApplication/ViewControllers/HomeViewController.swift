//
//  ViewController.swift
//  ButtonAnimation
//
//  Created by Юрий Нориков on 19.10.2019.
//  Copyright © 2019 norikoff. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
        let button : UIButton = {
            let button = UIButton(type: .custom)
            button.addTarget(self, action:  #selector(pushToNextVC), for:.touchUpInside)
            button.frame = CGRect(x: 0, y: 90, width: 100.0, height: 100.0)
            button.backgroundColor = UIColor.red
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
            button.clipsToBounds = true
            return button
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        view.addSubview(button)
    }
    
    
    @objc func pushToNextVC() {
        let animation = CABasicAnimation(keyPath: "opacity")
        animation.fromValue = 1
        animation.toValue = 0
        animation.duration = 2
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.beginTime = 1.0
        
        let theAnimation1 = CABasicAnimation(keyPath: "position")
        theAnimation1.fromValue = [50, 140]
        theAnimation1.toValue = [view.frame.width-50, 300]
        theAnimation1.duration = 3.0
        theAnimation1.beginTime = 0.0
        
        let theAnimation2 = CABasicAnimation(keyPath: "position")
        theAnimation2.fromValue = [view.frame.width-50, 300]
        theAnimation2.toValue = [view.frame.width/2, view.frame.height-140]
        theAnimation2.duration = 4.0
        theAnimation2.beginTime = theAnimation1.beginTime + theAnimation1.duration
        
        let theAnimation3 = CABasicAnimation(keyPath: "position")
        theAnimation3.fromValue = [view.frame.width/2, view.frame.height-140]
        theAnimation3.toValue = [50, 140]
        theAnimation3.duration = 5.0
        theAnimation3.beginTime = theAnimation2.beginTime + theAnimation2.duration
        
        
        let animations = CAAnimationGroup()
        animations.animations = [animation, theAnimation1, theAnimation2, theAnimation3]
        animations.duration = theAnimation3.beginTime + theAnimation3.duration
        button.layer.add(animations, forKey: "position5")
    }
    
}

