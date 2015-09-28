//
//  ViewController.swift
//  MaldonadoJulio-hw2
//
//  Created by Julio Maldonado on 9/15/15.
//  Copyright (c) 2015 Julio Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate = self
        city.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //makes the keyboard disapear when clicking on something outside the keyboard
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    //viewcontroller variables
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var savebutton: UIButton!
    
    //button handler checks if fields are filled and then changes messageLabel to "name - city"
    @IBAction func btnSaveClicked(sender: AnyObject) {
        self.view.endEditing(true)
        if textFeildFilled(name.text, city: city.text) {
            messageLabel.text = "\(name.text) - \(city.text)"
        } else{
            messageLabel.text = "You must enter a value for *both* name and city!!"
        }
    }
    
    //dismisses keyboard when return is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    //check if string contains a value and returns true if there is and false if not
    func textFeildFilled(name:String,city:String) -> Bool {
        var result = true
        if name.isEmpty || city.isEmpty{
            result = false
        }
        return result
    }
}

