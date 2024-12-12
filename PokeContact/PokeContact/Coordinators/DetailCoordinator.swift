//
//  DetailCoordinator.swift
//  PokeContact
//
//  Created by t0000-m0112 on 2024-12-09.
//

import UIKit

protocol DetailCoordinatorProtocol: AnyObject {
    func navigateBack()
}

final class DetailCoordinator {
    var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    private let contactRepository: ContactRepository
    
    // MARK: - Initialization
    init(
        navigationController: UINavigationController,
        contactRepository: ContactRepository
    ) {
        self.navigationController = navigationController
        self.contactRepository = contactRepository
    }
    
    // MARK: - Coordination
    // Create DetailViewModel, DetailViewController Instances with ContactMode
    func start(with mode: ContactMode) {
        
        let detailViewModel = DetailViewModel(
            coordinator: self,
            repository: contactRepository
        )
        let detailViewController = DetailViewController(
            viewModel: detailViewModel,
            mode: mode
        )
        
        navigationController.pushViewController(detailViewController, animated: true)
    }
}

// MARK: - Navigation
extension DetailCoordinator: DetailCoordinatorProtocol {
    func navigateBack() {
        navigationController.popViewController(animated: true)
    }
}

// MARK: - Coordiantor Default Method (not-in-use)
extension DetailCoordinator: Coordinator {
    func start() {}
}
