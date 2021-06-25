//
//  ViewController.swift
//  sliderClose
//
//  Created by Bryan Kuo on 2021/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var woman: UIImageView!
    @IBOutlet weak var bird: UIImageView!
    @IBOutlet weak var man: UIImageView!
    @IBOutlet weak var dog: UIImageView!
    
    func updateLocation(degrees: CGFloat) {
        bird.transform = CGAffineTransform.identity.rotated(by: CGFloat.pi/180*degrees).translatedBy(x: 0, y: -230)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLocation(degrees: 270)
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderCloser(_ sender: UISlider) {
        let speed = sender.value * 0.3
        dog.alpha = CGFloat(slider.value/360)
        
        man.frame.origin.x = CGFloat(556-speed)
        woman.frame.origin.x = CGFloat(275+speed)
        
        updateLocation(degrees: CGFloat(slider.value/2)+270)
        
    
    }
    
    
}

