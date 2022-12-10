//
//  ViewController.swift
//  lesson 3.1
//
//  Created by MacBook Air 13 on 08.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var startAnimationButton: SpringButton!
    @IBOutlet var currentAnimationDescriptionLabel: UILabel!
    
    let animationPresets = [
        "pop",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDownv",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing"
    ]
    
    let animationCurves = [
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeOutQuad",
        "easeInOutQuad",
        "easeInCubic",
        "easeOutCubic",
        "easeInOutCubic",
        "easeInQuart",
        "easeOutQuart",
        "easeInOutQuart",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack"
    ]

    var nextAnimation = "pop"
    
    @IBAction func startAnimation(_ sender: SpringButton) {
    
        animationView.animation = nextAnimation
        animationView.curve = animationCurves.randomElement()!
        animationView.force = CGFloat.random(in: 1...10)
        animationView.duration  = CGFloat.random(in: 1...10)
        animationView.delay  = CGFloat.random(in: 0...1)
        animationView.damping = CGFloat.random(in: 1...10)
        animationView.velocity = CGFloat.random(in: 1...10)
        animationView.repeatCount = Float.random(in: 1...10)
        animationView.x = CGFloat.random(in: 1...100)
        animationView.y = CGFloat.random(in: 1...100)
        animationView.scaleX = CGFloat.random(in: 1...5)
        animationView.scaleY = CGFloat.random(in: 1...5)
        animationView.rotate = CGFloat.random(in: 1...10)
        
        currentAnimationDescriptionLabel.text = """
    title: \(animationView.animation)
    curve: \(animationView.curve)
    force: \(String(format: "%.1f", animationView.force))
    delay: \(String(format: "%.1f", animationView.duration))
    duration: \(String(format: "%.1f", animationView.delay))
    damping: \(String(format: "%.1f", animationView.damping))
    velocity: \(String(format: "%.1f", animationView.velocity))
    repeatCount: \(String(format: "%.1f", animationView.repeatCount))
    x: \(String(format: "%.1f", animationView.x))
    y: \(String(format: "%.1f", animationView.y))
    scaleX: \(String(format: "%.1f", animationView.scaleX))
    scaleY: \(String(format: "%.1f", animationView.scaleY))
    rotate: \(String(format: "%.1f", animationView.rotate))
"""
        animationView.animate()
        nextAnimation = animationPresets.randomElement()!
        startAnimationButton.setTitle("Next: \(String(nextAnimation))", for: .normal)
    }
}


    
