//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Maneesha Reddy gurrala on 2/3/24.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
   

    @IBAction func ChangeBackgroundColr(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        
    }
    func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Implement actions when return key is pressed
            textField.resignFirstResponder() // Dismiss the keyboard
            return true
        }
}

