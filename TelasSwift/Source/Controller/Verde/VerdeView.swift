//
//  VerdeView.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class VerdeView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .green
        setupVisualElements()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    var onAzulTap: (() -> Void)?
    var onVermelhoTap: (() -> Void)?
    var buttonAzul = UIButton()
    var buttonVermelho = UIButton()
    
    func setupVisualElements(){
        buttonAzul.layer.cornerRadius = 14
        buttonAzul.backgroundColor = .blue
        buttonAzul.setTitleColor(.white, for: .normal)
        buttonAzul.setTitle("Voltar para a tela azul", for: .normal)
        buttonAzul.translatesAutoresizingMaskIntoConstraints = false
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        
        buttonVermelho.layer.cornerRadius = 14
        buttonVermelho.backgroundColor = .red
        buttonVermelho.setTitleColor(.black, for: .normal)
        buttonVermelho.setTitle("Ir para a tela vermelha", for: .normal)
        buttonVermelho.translatesAutoresizingMaskIntoConstraints = false
        buttonVermelho.addTarget(self, action: #selector(vermelhoTap), for: .touchUpInside)
        
        addSubview(buttonAzul)
        addSubview(buttonVermelho)
        
        NSLayoutConstraint.activate([
            buttonAzul.widthAnchor.constraint(equalToConstant: 150),
            buttonAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 400),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonVermelho.widthAnchor.constraint(equalToConstant: 150),
            buttonVermelho.heightAnchor.constraint(equalToConstant: 60),
            buttonVermelho.topAnchor.constraint(equalTo: buttonAzul.bottomAnchor, constant: 60),
            buttonVermelho.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVermelho.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    @objc
    private func azulTap() {
        onAzulTap?()
    }
    
    @objc
    private func vermelhoTap() {
        onVermelhoTap?()
    }
}
