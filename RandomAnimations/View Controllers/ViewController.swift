//
//  ViewController.swift
//  RandomAnimations
//
//  Created by Андрей Абакумов on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var animationPresetLabel: UILabel!
    @IBOutlet var animationCurveLabel: UILabel!
    @IBOutlet var animationForceLabel: UILabel!
    @IBOutlet var animationDurationLabel: UILabel!
    @IBOutlet var animationDelayLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }


    @IBAction func startAnimationButtonTapped(_ sender: UIButton) {
        changeAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
}

//MARK: - Private Methods

extension ViewController {
    private func setLabels() {
        animationPresetLabel.text = animation.preset
        animationCurveLabel.text = animation.curve
        animationForceLabel.text = String(format: "%.2f",animation.force)
        animationDurationLabel.text = String(format: "%.2f",animation.duration)
        animationDelayLabel.text = String(format: "%.2f",animation.delay)
    }
    
    private func changeAnimation() {
        setLabels()
        
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
    }
}

