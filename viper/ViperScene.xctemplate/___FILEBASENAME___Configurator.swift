//
//  ___FILEBASENAME___Configurator.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

public class ___FILEBASENAME___Configurator {
    
    public init() {}
    
    func create() -> ___FILEBASENAME___ViewController {
        
//        Use this implementation
//        guard let viewController = StoryboardIdentifier.authentication.storyboard?.instantiateViewController(withIdentifier: "___FILEBASENAME___ViewController") as? ___FILEBASENAME___ViewController else {
//            return
//        }
//        
//        OR
//        User this another one
        let viewController = ___FILEBASENAME___ViewController()

        let presenter = ___FILEBASENAME___Presenter(with: email)
        let router = ___FILEBASENAME___Router()
        let interactor = ___FILEBASENAME___InputInteractor()
        
        presenter.inject(view: viewController, interactor: interactor, router: router)
        interactor.inject(output: presenter)
        viewController.inject(presenter: presenter)
        router.inject(viewController: viewController)
        
        return viewController
    }
    
}

