//
//  AzulCoordinator.swift
//  TelasSwift
//
//  Created by Herbert on 08/12/23.
//

import Foundation
import UIKit

class AzulCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(){
        let viewController = AzulViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onVerdeTap = {
            self.goToVerde()
        }
    }
    
    func goToVerde(){
        let coordinator = VerdeCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
