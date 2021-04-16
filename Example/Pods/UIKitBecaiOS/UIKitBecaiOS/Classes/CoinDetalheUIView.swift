//
//  CoinDetalheUIView.swift
//  ModuloDetalhes
//
//  Created by Jonattan Moises Sousa on 15/04/21.
//

import UIKit

public struct Teste {
    let valorTeste = 10
}

public protocol CoinDetalheDelegate: class {
    func favoritar()
}

public class CoinDetalheUIView: UIView {
    var favoritoDelegate: CoinDetalheDelegate?
    var actionFavorita: (() -> Void)?
    @IBOutlet weak var btFavorito: UIButton!
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        layoutIfNeeded()
    }
    override public func awakeFromNib() {
        super.awakeFromNib()
        setupUICell()
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        setupUIView()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    private func setupInit() {
        // Configs iniciais
    }
    
    public func setupUI(delegate: CoinDetalheDelegate) {
        self.favoritoDelegate = delegate

    }
    
    private func setupUIView() {
        self.btFavorito.setTitle("Fav", for: .normal)
    }
    
    private func setupUICell() {
        //
    }
    @IBAction func btFavoritoAction(_ sender: UIButton) {
        if let action = self.actionFavorita {
            action()
        } else {
            self.favoritoDelegate?.favoritar()
        }
    }
}

extension UIView {
    public func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        guard let nibzao = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return UIView()}
        return nibzao
    }
}

extension UIView {
    public static var bundleUI: Bundle {
        var bundle: Bundle
        if let bundeLet = Bundle(identifier: "org.cocoapods.ModuloDetalhes") {
            bundle = bundeLet
        } else {
            bundle = Bundle(for: self)
        }
        return bundle
    }
    public class func fromNib() -> Self {
        return fromNib(viewType: self)
    }
    public class func fromNib<T: UIView>(viewType: T.Type) -> T {
        if let nib = bundleUI.loadNibNamed(String(describing: viewType), owner: nil, options: nil)?.first as? T {
            return nib
        }
        return T()
    }
}
