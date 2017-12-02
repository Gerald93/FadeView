//
//  ViewController.swift
//  FadeView
//
//  Created by Gerald on 02/12/2017.
//  Copyright © 2017 Gerald. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fadeView: UIView!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fade()
    }

    func fade(){
        
        self.fadeView.fadeIn(completion: {
            (finished: Bool) -> Void in
            self.textLabel.text = "SWIFT EXAMPLE"
            self.fadeView.fadeOut()
           
        })
    }
}

