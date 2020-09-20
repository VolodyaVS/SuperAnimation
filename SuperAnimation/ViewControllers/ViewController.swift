//
//  ViewController.swift
//  SuperAnimation
//
//  Created by Vladimir Stepanchikov on 19.09.2020.
//

import Spring

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var parametersLabel: UILabel!
    @IBOutlet weak var viewAnimationLabel: SpringView!
    @IBOutlet weak var startButtonLabel: SpringButton!
    
    //MARK: - Private Properties
    private var currentAnimation = Animation.getAnimation()
    private var nextAnimation = Animation.getAnimation()

    //MARK: - IB Actions
    @IBAction func startButton(_ sender: SpringButton) {
        
        var description: String {
            """
            animation is "\(currentAnimation.preset)"
            curve is "\(currentAnimation.curve)"
            """
        }
        
        parametersLabel.text = description
        
        viewAnimationLabel.animation = currentAnimation.preset.rawValue
        viewAnimationLabel.curve = currentAnimation.curve.rawValue
        viewAnimationLabel.force = currentAnimation.force
        viewAnimationLabel.duration = currentAnimation.duration
        viewAnimationLabel.rotate = currentAnimation.rotate
        viewAnimationLabel.animate()
        
        sender.animation = "pop"
        sender.animate()
        
        nextAnimation = Animation.getAnimation()
        startButtonLabel.setTitle("\(nextAnimation.preset)", for: .normal)
        currentAnimation = nextAnimation

    }
    
}
