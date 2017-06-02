//
//  ___FILEBASENAME___Router.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

public class ___FILEBASENAME___Router {
    
    fileprivate weak var viewController : UIViewController?
    
    public init() {}
    
    public func inject(viewController:UIViewController?) {
        self.viewController = viewController
    }
    
    fileprivate func assertDependencies() {
        assert(viewController != nil, "ViewController was not set to the Router")
    }
    
    public func gotoInsideApplication() {
        assertDependencies()
    }
    
}

//MARK: - Wireframe Delegate
extension ___FILEBASENAME___Router : ___FILEBASENAME___Wireframe {
    public func gotoSomeplace() {
        //Implement the route here
    }
}