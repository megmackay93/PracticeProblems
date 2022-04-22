//
//  ViewController.swift
//  TempTracker
//
//  Created by Megan Mackay on 4/22/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var messageArray: [Character] = ["c", "a", "k", "e", " ", "p", "o", "u", "n", "d", " ", "s", "t", "e", "a", "l"]
        print(String(messageArray))
        reverseWords(message: &messageArray)
        print(String(messageArray))
    }

}

