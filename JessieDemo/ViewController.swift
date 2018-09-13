//
//  ViewController.swift
//  JessieDemo
//
//  Created by Jessie Gross on 9/11/18.
//  Copyright © 2018 JessieApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var boxLabel: UIView!
    
    @IBOutlet weak var textField: UITextField!
    
    // Variable to hold background color.
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Store the default background color. This is useful when it comes to going back to default settings.
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Changes the color of text label.
    @IBAction func didTapButton(_ sender: Any) {
        print("Hello!")
        //textLabel.textColor = UIColor.cyan
        //boxLabel.backgroundColor = UIColor.black
        
        if textLabel.textColor == UIColor.red {
            textLabel.textColor = UIColor.blue
        }
        else if textLabel.textColor == UIColor.blue {
            textLabel.textColor = UIColor.yellow
        }
        else if textLabel.textColor == UIColor.white {
            textLabel.textColor = UIColor.red
        }
        else {
            textLabel.textColor = UIColor.white
        }
    
    }
    
    // Changes the background color.
    @IBAction func didTapViewButton(_ sender: Any) {
        //view.backgroundColor = UIColor.yellow
        
        if view.backgroundColor == UIColor.red {
            view.backgroundColor = UIColor.cyan
        }
        else if view.backgroundColor == UIColor.cyan {
            view.backgroundColor = UIColor.green
        }
        else if view.backgroundColor == UIColor.green {
            view.backgroundColor = UIColor.red
        }
        else {
            view.backgroundColor = UIColor.green
        }
    }
    
    // Changes the label to user input.
    @IBAction func didTapTextButton(_ sender: Any) {
        
        // textLabel.text = "Goodbye!"
        
        textLabel.text = textField.text // copy user input into text field
        
        view.endEditing(true) //dismiss keyboard
        
        // When there is no user input, display message
        if textField.text == "" {
            textLabel.text = "Hello from Jessie! :D"
        }
        
        textField.text = "" // clear the text field
    }
    
    // One tap gesture to background to reset to default settings.
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Jessie! :D"
        boxLabel.backgroundColor = UIColor.lightText
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
    }
    
}

