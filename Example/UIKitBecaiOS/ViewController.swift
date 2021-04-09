//
//  ViewController.swift
//  UIKitBecaiOS
//
//  Created by henrymelo on 04/09/2021.
//  Copyright (c) 2021 henrymelo. All rights reserved.
//

import UIKit
import UIKitBecaiOS

class ViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.setTitle(ButtonBecaiOS.TituloNormal, for: .normal)
        
        nextButton.setTitle(ButtonBecaiOS.TituloClick, for: .highlighted)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

