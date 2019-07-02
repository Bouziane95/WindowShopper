//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Bouziane Bey on 01/07/2019.
//  Copyright © 2019 Bouziane Bey. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.823882401, green: 0.8189857602, blue: 0.8276470304, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        awakeFromNib()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.2468964041)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let placeholder = placeholder{
            
            let place = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
