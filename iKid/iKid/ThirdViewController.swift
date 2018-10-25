//
//  ThirdViewController.swift
//  iKid
//
//  Created by Michelle Ho on 10/24/18.
//  Copyright © 2018 Michelle Ho. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var joke: UILabel!
    var index = 1
    var end = false
    
    var jokes: [String] = ["What do you call a fake noodle?", "An im-pasta", "haha"]
    let imageView = UIImageView(image: UIImage(named: "haha"))
    
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
        
        if jokes[index] == "haha" {
            joke.text = ""
            imageView.alpha = 1
            imageView.center = view.center
            imageView.contentMode = .scaleAspectFit
            view.addSubview(imageView)
        } else {
            imageView.alpha = 0
            joke.text = jokes[index]
        }
        
        index += 1
        
        if (index == jokes.count) {
            index = 0
            end = true
        }
    }
    
    
}
