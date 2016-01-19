//
//  ViewController.swift
//  Tapper-Extreme
//
//  Created by Marc Aupont on 1/18/16.
//  Copyright © 2016 Digimark Technical Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() {
            
            restartGame()
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if userInput.text != nil && userInput.text != "" {
            
            logoImg.hidden = true
            userInput.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(userInput.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
        
    }
    
    func restartGame() {
        
        maxTaps = 0
        userInput.text = ""
        
        logoImg.hidden = false
        userInput.hidden = false
        playButton.hidden = false
        
        tapButton.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        
        if currentTaps >= maxTaps {
            
            return true
            
        } else {
            
            return false
        }
    }
    
    func updateTapsLabel() {
        
        tapsLabel.text = "\(currentTaps) Taps"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

