//
//  StoryDetailsUIViewController.swift
//  ModuloDetalhes
//
//  Created by Henrique Melo on 15/04/21.
//

import Foundation
import UIKit

public class StoryDetailsUIViewController: UIViewController {

    @IBOutlet weak var stackDetails: UIStackView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    func setupUI(delegate: CoinDetalheDelegate)  {
    public func setupUI(delegate: CoinDetalheDelegate)  {
        let head = CoinDetalheUIView.fromNib()
        head.setupUI(delegate: delegate)
        head.backgroundColor = .red
        stackDetails.addArrangedSubview(head)
    }
}

extension StoryDetailsUIViewController: CoinDetalheDelegate {
    public func favoritar() {
        // Ação que vc quiser
    }
}


extension UIViewController {
    public static var bundleUI: Bundle {
        var bundle: Bundle
        if let bundeLet = Bundle(identifier: "org.cocoapods.ModuloDetalhes") {
            bundle = bundeLet
        } else {
            bundle = Bundle(for: self)
        }
        return bundle
    }
    public class func fromSB() -> Self {
        return fromSB(viewType: self)
    }
    public class func fromSB<T: UIViewController>(viewType: T.Type) -> T {
        let sb = UIStoryboard(name: "StoryDetails", bundle: bundleUI)
        if let vc = sb.instantiateViewController(withIdentifier: "StoryDetails") as? T {
            vc.loadViewIfNeeded()
            return vc
        }
        return T()
    }
}


public class loadStory: UIViewController {
    public static func execLoad() -> UIViewController {
        if let bundle = Bundle(identifier: "org.cocoapods.ModuloDetalhes") {
            let sb = UIStoryboard(name: "StoryDetails", bundle: bundle)
            let vc = sb.instantiateViewController(withIdentifier: "StoryDetails") as! StoryDetailsUIViewController
            vc.loadViewIfNeeded()
            return vc
        } else {
            return UIViewController()
        }
        
    }
    
}

 
