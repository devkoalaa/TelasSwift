//
//  AzulViewController.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class AzulViewController: ViewController {
    var onVerdeTap: (() -> Void)?
    
    lazy var viewMain: AzulView = {
        let view = AzulView()
        
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
        self.title = "Azul"
    }
}
