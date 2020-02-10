//
//  ViewController.swift
//  iOSTest
//
//  Created by Aaron Fulmer on 1/17/20.
//  Copyright © 2020 Aaron Fulmer. All rights reserved.
//

import UIKit

class JournalScreens: UIViewController {

    @IBOutlet weak var journalButton: UIImageView!
    
    @IBAction func gohome2(_ sender: Any) {
        performSegue(withIdentifier: "goHome2", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

