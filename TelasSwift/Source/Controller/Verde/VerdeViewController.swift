//
//  VerdeViewController.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class VerdeViewController: ViewController {
    var onAzulTap: (() -> Void)?
    var onVermelhoTap: (() -> Void)?
    
    lazy var viewMain: VerdeView = {
        let view = VerdeView()

        view.onAzulTap = {
            self.onAzulTap?()
        }
        
        view.onVermelhoTap = {
            self.onVermelhoTap?()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Verde"
    }
}
