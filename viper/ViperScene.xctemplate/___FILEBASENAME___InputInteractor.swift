//
//  ___FILEBASENAME___InputInteractor.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

public class ___FILEBASENAME___InputInteractor : ___FILEBASENAME___Input {
    
    fileprivate weak var output : ___FILEBASENAME___Output?
    
    public func inject(output:___FILEBASENAME___Output?) {
        self.output = output
    }

    private func assertDependencies() {
   		assert(output != nil, "Did not set output to the input interactor")
    }
    
    public func get(something:String) {
        assertDependencies()
        //Implement how to get data here
    }

}
