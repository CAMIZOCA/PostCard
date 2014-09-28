//
//  ViewController.swift
//  test01
//
//  Created by Marvin Baptista on 27/09/14.
//  Copyright (c) 2014 Marvin Baptista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailBotton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
       messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        //ocultar teclado
        enterMessageTextField.resignFirstResponder()
        
        mailBotton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }
    
}

