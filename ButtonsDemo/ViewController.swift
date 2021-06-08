//
//  ViewController.swift
//  ButtonsDemo
//
//  Created by Alexander on 7/6/21.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0

    @IBOutlet weak var increaseButton: UIButton!
    
    @IBAction func increase(_ sender: Any) {
        counter += 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

