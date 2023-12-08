//
//  AzulView.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class AzulView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        setupVisualElements()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    var onVerdeTap: (() -> Void)?
    var buttonVerde = UIButton()
    
    func setupVisualElements(){
        buttonVerde.layer.cornerRadius = 14
        buttonVerde.backgroundColor = .green
        buttonVerde.setTitleColor(.black, for: .normal)
        buttonVerde.setTitle("Ir para a tela verde", for: .normal)
        buttonVerde.translatesAutoresizingMaskIntoConstraints = false
        buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        addSubview(buttonVerde)
        
        NSLayoutConstraint.activate([
            buttonVerde.widthAnchor.constraint(equalToConstant: 150),
            buttonVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonVerde.topAnchor.constraint(equalTo: self.topAnchor, constant: 400),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    @objc
    private func verdeTap() {
        onVerdeTap?()
    }
}
