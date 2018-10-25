//
//  SecondViewController.swift
//  iKid
//
//  Created by Michelle Ho on 10/24/18.
//  Copyright © 2018 Michelle Ho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var joke: UILabel!
    
    var end = false
    var jokes: [String] = ["What is a developer's favorite place to hang out?", "Foo bar"]
    var index = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        joke.text = jokes[0]
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func flipView(_ sender: Any) {
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(1)
        if (end) {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
        } else {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
        }
        UIView.commitAnimations()
        
        joke.text = jokes[index]
        index += 1
        
        if (index == jokes.count) {
            index = 0
            end = true
        }
    }
    
}

