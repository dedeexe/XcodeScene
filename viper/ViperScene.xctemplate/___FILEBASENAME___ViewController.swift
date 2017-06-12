//
//  ___FILEBASENAME___ViewController.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAME___ViewController: UIViewController {

    fileprivate var presenter : ___FILEBASENAME___Module?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assertDependencies()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    public func inject(presenter:___FILEBASENAME___Presenter?) {
        self.presenter = presenter
    }
    
    fileprivate func assertDependencies() {
        assert(presenter != nil, "Did not set Presenter to the view")
    }
}

//MARK: - View Delegate
extension ___FILEBASENAME___ViewController : ___FILEBASENAME___View {
    func show(something: String) {
        //Implement what to show here
    }
}
