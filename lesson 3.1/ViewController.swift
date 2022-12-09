//
//  ViewController.swift
//  lesson 3.1
//
//  Created by MacBook Air 13 on 08.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationStarted = false

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate( // анимация движения для view
            withDuration: 0.5, // длительность
            delay: 0, // задержка старта в сек
            options: [.autoreverse, .repeat]) {// доп опции (туда-обратно и повтор)
                [unowned self] in   //лист захвата (лекция 2.14)
                if !animationStarted { // для повтора
                    coreAnimationView.frame.origin.x -= 40
                    animationStarted.toggle()
                }
            }
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "wobble"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.delay = 0.3
        springAnimationView.animate()
        
        sender.animation = "swing"
        sender.animate()
         
    }
    
    
}

