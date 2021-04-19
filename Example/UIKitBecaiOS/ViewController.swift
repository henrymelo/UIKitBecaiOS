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
    
    /**
     * So renderiza corretamente o Layout  chamando no  viewDidAppear
     * ou em um  IBAction
     */
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showDetailsAction()
    }
    
    /**
     * renderizando corretamente o layout por um IBAction
     */
    @IBAction func showDetailsAction(_ sender: UIButton) {
        showDetailsAction()
    }
    
    func showDetailsAction() {
        let vc = ViewDetailsVC.fromSB()
        vc.setupUI(delegate: self)
        self.present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: DetailViewDelegate {
    func viewDetailAction() {
        print("*********************************")
        print(" viewDetailAction ")
        print("*********************************")
    }
}
