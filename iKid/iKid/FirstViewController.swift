//
//  FirstViewController.swift
//  iKid
//
//  Created by Michelle Ho on 10/24/18.
//  Copyright © 2018 Michelle Ho. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var joke: UILabel!
    
    var end = false
    
    var jokes: [String] = ["Knock Knock", "Who's There?", "Witches", "Witches Who?", "Witches is the Right Way?"]
    var index = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        joke.text = jokes[0]
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

