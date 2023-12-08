//
//  VermelhoCoordinator.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class VermelhoCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = VermelhoViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onAzulTap = {
            self.goToAzul()
        }
        
        viewController.onVerdeTap = {
            self.goToVerde()
        }
    }
    
    func goToAzul(){
        let coordinator = AzulCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func goToVerde(){
        self.navigationController.popViewController(animated: true)
    }
}
