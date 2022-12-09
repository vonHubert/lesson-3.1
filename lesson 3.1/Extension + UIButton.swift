//
//  Extension + UIButton.swift
//  lesson 3.1
//
//  Created by MacBook Air 13 on 08.12.2022.
//

import Foundation
import UIKit

extension UIButton {
    func pulsate() {
        let springAnimation = CASpringAnimation(keyPath: "transform.scale")
        springAnimation.fromValue = 0.96
        springAnimation.toValue = 1
        springAnimation.duration = 0.5
        springAnimation.autoreverses = true // туда - обратно
        springAnimation.repeatCount = 2 // 2 повтора
        springAnimation.initialVelocity = 0.5
        springAnimation.damping = 1
        
        layer.add(springAnimation, forKey: nil) // добавить анимацию на слой. nil - т.к. анимация одна. можно сделать ключи для разных
    }
}
