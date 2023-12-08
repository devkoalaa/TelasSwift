//
//  VermelhoView.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class VermelhoView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupVisualElements()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    var buttonAzul = UIButton()
    var buttonVerde = UIButton()
    
    func setupVisualElements(){
        print("ENTROU NO VERMELHO!!!!")
        buttonAzul.layer.cornerRadius = 14
        buttonAzul.backgroundColor = .blue
        buttonAzul.setTitleColor(.white, for: .normal)
        buttonAzul.setTitle("Ir para a tela azul", for: .normal)
        buttonAzul.translatesAutoresizingMaskIntoConstraints = false
        buttonAzul.addTarget(self, action: #selector(azulTap), for: .touchUpInside)
        
        buttonVerde.layer.cornerRadius = 14
        buttonVerde.backgroundColor = .green
        buttonVerde.setTitleColor(.black, for: .normal)
        buttonVerde.setTitle("Voltar para a tela verde", for: .normal)
        buttonVerde.translatesAutoresizingMaskIntoConstraints = false
        buttonVerde.addTarget(self, action: #selector(verdeTap), for: .touchUpInside)
        
        addSubview(buttonAzul)
        addSubview(buttonVerde)
        
        NSLayoutConstraint.activate([
            buttonAzul.widthAnchor.constraint(equalToConstant: 150),
            buttonAzul.heightAnchor.constraint(equalToConstant: 60),
            buttonAzul.topAnchor.constraint(equalTo: self.topAnchor, constant: 400),
            buttonAzul.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonAzul.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonVerde.widthAnchor.constraint(equalToConstant: 150),
            buttonVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonVerde.topAnchor.constraint(equalTo: buttonAzul.bottomAnchor, constant: 60),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16)
        ])
    }
    
    @objc
    private func azulTap() {
        onAzulTap?()
    }
    
    @objc
    private func verdeTap() {
        onVerdeTap?()
    }
}
