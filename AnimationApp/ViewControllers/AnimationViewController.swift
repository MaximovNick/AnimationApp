//
//  AnimationViewController.swift
//  AnimationApp
//
//  Created by Nikolai Maksimov on 26.06.2022.
//

import Spring

class AnimationViewController: UIViewController {
    
    
    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showAnimationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = animation.force
        animationView.delay = animation.delay
        animationView.duration = animation.duration
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
    
    
}

