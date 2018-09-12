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
    
    // Changes the color of text label as well as its small view (box of the text label).
    @IBAction func didTapButton(_ sender: Any) {
        print("Hello!")
        textLabel.textColor = UIColor.cyan
        boxLabel.backgroundColor = UIColor.black
    
    }
    
    // Changes the background color.
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    // Changes the label to user input.
    @IBAction func didTapTextButton(_ sender: Any) {
        
        // textLabel.text = "Goodbye!"
        
        textLabel.text = textField.text // copy user input into text field
        
        view.endEditing(true) //dismiss keyboard
        
        // When there is no user input, display message
        if textField.text == "" {
            textLabel.text = "¯\\_(ツ)_/¯"
        }
        
        textField.text = "" // clear the text field
    }
    
    // One tap gesture to background to reset to default settings.
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello! :D"
        boxLabel.backgroundColor = UIColor.lightText
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
    }
    
}

