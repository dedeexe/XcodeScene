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
    	setup()
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    public func inject(presenter:___FILEBASENAME___Presenter?) {
        self.presenter = presenter
    }
    
    fileprivate func assertDependencies() {
        assert(presenter != nil, "Did not set Presenter to the view")
    }

	fileprivate func setup() {
        startObservers()
	}
    
    deinit {
        stopObservers()
    }
}

// MARK: - View Delegate
extension ___FILEBASENAME___ViewController : ___FILEBASENAME___View {
    func show(something: String) {
        //Implement what to show here
    }
}

// MARK: - Configurations
extension ___FILEBASENAME___ViewController { 
    func startObservers() {
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(showKeyboard), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        nc.addObserver(self, selector: #selector(hideKeyboard), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func stopObservers() {
        let nc = NotificationCenter.default
        nc.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        nc.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    func showKeyboard(notification:Notification) {
        if let frame = notification.userInfo?["UIKeyboardBoundsUserInfoKey"] as? NSValue {
            let finalFrame = frame.cgRectValue
            let frameHeight = finalFrame.height
            
            // Implement keyboard show behavior here
        }
    }
    
    func hideKeyboard(notification:Notification) {
        if let frame = notification.userInfo?["UIKeyboardBoundsUserInfoKey"] as? NSValue {
            let finalFrame = frame.cgRectValue
            let frameHeight = finalFrame.height
            
            // Implement keyboard hide behavior here
        }
    }
}
