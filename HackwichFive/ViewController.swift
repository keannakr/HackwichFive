//
//  ViewController.swift
//  HackwichFive
//
//  Created by Keanna Ramiscal on 3/7/19.
//  Copyright © 2019 Keanna Ramiscal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBAction func sliderHasMoved(_ sender: Any) {
        
        
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
    }
    
    @IBOutlet var slider: UISlider!
    //Create a variable that can hold the value of the slider
    var currentValue: Int = 0
    
    var targetValue: Int = 0
    
    @IBOutlet var targetLabel: UILabel!
    
    func updateTargetLabel() {
        targetLabel.text = String(targetValue)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = lroundf(slider.value)
        
        targetValue = Int.random(in: 0...10)
        
        let thumbImageNormal = UIImage (named:"SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    }
    
    func startNewRound() {
        
        targetValue = Int.random(in: 0...10)
        currentValue = 50
        currentValue = lroundf(slider.value)
        
        updateTargetLabel()
    }


    @IBAction func myGuessButtonPressed(_ sender: UIButton) {
    //5.New variable message that displays a message that includes currentValue
        let message = "The value is \(currentValue)" + "\nThe Target Value is: \(targetValue)"
        
    //1.Create alert view
        let alert = UIAlertController (title:"Hello World!", message: message, preferredStyle: .alert)
    
    //2.Button that user taps to dismiss view controller
    let action = UIAlertAction (title: "Awesome", style: .default, handler: nil)
    
    //3.Add the button to the alertview
    alert.addAction(action)
    
    //4.Present alertview on screen
        present(alert, animated: true, completion: nil)
    
        startNewRound()
}
    
}

