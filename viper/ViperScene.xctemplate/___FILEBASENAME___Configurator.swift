//
//  ___VARIABLE_sceneName___Configurator.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

public class ___VARIABLE_sceneName___Configurator {
    
    public init() {}
    
    func create() -> ___VARIABLE_sceneName___ViewController {
        
//        Use this implementation
//        guard let viewController = StoryboardIdentifier.authentication.storyboard?.instantiateViewController(withIdentifier: "___VARIABLE_sceneName___ViewController") as? ___VARIABLE_sceneName___ViewController else {
//            return
//        }
//        
//        OR
//        User this another one
        let viewController = ___VARIABLE_sceneName___ViewController()

        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        let interactor = ___VARIABLE_sceneName___InputInteractor()
        
        presenter.inject(view: viewController, interactor: interactor, router: router)
        interactor.inject(output: presenter)
        viewController.inject(presenter: presenter)
        router.inject(viewController: viewController)
        
        return viewController
    }
    
}

