//
//  VermelhoViewController.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class VermelhoViewController: ViewController {
    var onAzulTap: (() -> Void)?
    var onVerdeTap: (() -> Void)?
    
    lazy var viewMain: VermelhoView = {
        let view = VermelhoView()

        view.onAzulTap = {
            self.onAzulTap?()
        }
        
        view.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Vermelho"
    }
}
