//
//  ViewController.swift
//  Tapper
//
//  Created by Alexander Besson on 2015-10-18.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxTaps: Int = 0 // Explicit declaration
    var currentTaps = 0 // Implicit declaration
    
    // UI ELEMENTS
    @IBOutlet weak var imgTapperLogo: UIImageView! // Implicitly unwrapped optional
    @IBOutlet weak var txtHowMany: UITextField!
    @IBOutlet weak var btnPlay: UIButton!
    
    @IBOutlet weak var btnCoin: UIButton!
    @IBOutlet weak var lblTaps: UILabel!
    
    // PLAY BUTTON
    @IBAction func playButtonPressed(sender: UIButton) {
        
        if Int(txtHowMany.text!) != nil && txtHowMany.text! != "" {
            maxTaps = Int(txtHowMany.text!)!
            currentTaps = 0
            
            imgTapperLogo.hidden = true
            btnPlay.hidden = true
            txtHowMany.hidden = true
            
            btnCoin.hidden = false
            lblTaps.hidden = false
            txtHowMany.text = nil
            
            updateTapsLabel()
        }
    }
    
    // COIN BUTTON
    
    @IBAction func coinButtonPressed(sender: UIButton) {
        currentTaps++
        updateTapsLabel()
        
        if isGameOver() == true {
            restartGame()
        } else {
            
        }
    }
    
    // Dry principle: Don't Repeat Yourself
    
    func updateTapsLabel() {
        lblTaps.text = "\(currentTaps) Taps"
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        maxTaps = 0
        
        imgTapperLogo.hidden = false
        btnPlay.hidden = false
        txtHowMany.hidden = false
        
        btnCoin.hidden = true
        lblTaps.hidden = true
    }
    
    
    
    
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }


}

