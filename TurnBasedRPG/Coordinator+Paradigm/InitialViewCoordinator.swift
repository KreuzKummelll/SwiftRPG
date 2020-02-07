//
//  InitialViewCoordinator.swift
//  TurnBasedRPG
//
//  Created by Andrew on 07.02.20.
//  Copyright © 2020 Chris Phillips. All rights reserved.
//

import UIKit

class InitialViewCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(animated: Bool) {
        let vc = InitialViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    
    
}
