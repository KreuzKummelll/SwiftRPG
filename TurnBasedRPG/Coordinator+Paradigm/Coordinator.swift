//
//  Coordinator.swift
//  AdventureText
//
//  Created by Andrew on 04.09.19.
//  Copyright © 2019 Andrew McLane. All rights reserved.
//

import UIKit


protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start(animated: Bool)
}
