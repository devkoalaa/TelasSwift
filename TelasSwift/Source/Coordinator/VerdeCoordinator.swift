//
//  VerdeCoordinator.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class VerdeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = VerdeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onAzulTap = {
            self.goToAzul()
        }
        
        viewController.onVermelhoTap = {
            self.goToVermelho()
        }
    }
    
    func goToAzul(){
        self.navigationController.popViewController(animated: true)
    }
    
    func goToVermelho(){
        let coordinator = VermelhoCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
