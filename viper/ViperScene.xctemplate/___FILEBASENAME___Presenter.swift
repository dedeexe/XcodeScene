//
//  ___FILEBASENAME___Presenter
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

protocol ___FILEBASENAME___Module {
    func doSomething()
}

protocol ___FILEBASENAME___Output {
    func fetch(something:String)
}

public class ___FILEBASENAME___Presenter {
    
    fileprivate weak var view   : ___FILEBASENAME___View?
    fileprivate var interactor  : ___FILEBASENAME___Input?
    fileprivate var router      : ___FILEBASENAME___Wireframe?
    
    public init() {}
    
    public func inject(view: ___FILEBASENAME___View?, interactor:___FILEBASENAME___Input?, router:___FILEBASENAME___Wireframe?) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    fileprivate func assertDependencies() {
        assert(view != nil, "No view defined in presenter")
        assert(interactor != nil, "No interactor defined in presenter")
        assert(router != nil, "No router defined in presenter")
    }
    
}

extension ___FILEBASENAME___Presenter : ___FILEBASENAME___Module {
    func doSomething() {
        assertDependencies()
        //Implements presenter actions here
    }

}

extension ___FILEBASENAME___Presenter : ___FILEBASENAME___Output {
    func fetch(something:String)
        assertDependencies()
        //Implements here what todo with arrived data
    }
}
