//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    
    
    // Create your methods here
    
    // Exercise 1
    func addNameToDeliLine(name:String)->String{
        let firstName = name.componentsSeparatedByString(" ")
        var message = ""
        
        if deliLine.isEmpty{
            deliLine.append(name)
            message = "Welcome \(name), you're first in line!"

        }
        else if name == "Billy Crystal" ||
                name == "Meg Ryan"{
           deliLine.insert(name, atIndex: 0)
           message = "Welcome \(firstName[0])! You can sit wherever you like."
           print(deliLine)
            }
        
        else{
           deliLine.append(name)
           message = "Welcome \(name), you're number \(deliLine.endIndex) in line."
        }
        
        return message }
        
    // Exercise 2
    func nowServing()->String{
        var message = ""
    if deliLine.isEmpty{
       message = "There is no-one to be served."
    }else{
     for (index, name) in deliLine.enumerate(){
       message = "Now serving \(name)"
        deliLine.removeAtIndex(index)}
    }
        return message
    }
    
    //Exercise 3
    func deliLineDescription()->String{
        var message = ""
        if deliLine.isEmpty{
            message = "The line is currently empty."
        }else{
            for (index, name) in deliLine.enumerate(){
                message = "The line is:\n"
                message = message + ("\(index) \(name)")
        }
            
          //  _ = arc4random_uniform(20)
        
        }
            return message
}
}