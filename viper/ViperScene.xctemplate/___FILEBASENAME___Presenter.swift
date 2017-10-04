//
//  ___VARIABLE_sceneName___Presenter
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

public class ___VARIABLE_sceneName___Presenter {
    
    fileprivate weak var view   : ___VARIABLE_sceneName___View?
    fileprivate var interactor  : ___VARIABLE_sceneName___Input?
    fileprivate var router      : ___VARIABLE_sceneName___Wireframe?
    
    public init() {}
    
    public func inject(view: ___VARIABLE_sceneName___View?, interactor:___VARIABLE_sceneName___Input?, router:___VARIABLE_sceneName___Wireframe?) {
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


//MARK: - Presenter Delegates
extension ___VARIABLE_sceneName___Presenter : ___VARIABLE_sceneName___Module {
    public func doSomething() {
        assertDependencies()
        //Implements presenter actions here
    }

}

//MARK: - Output Interactor Delegate
extension ___VARIABLE_sceneName___Presenter : ___VARIABLE_sceneName___Output {
    public func fetch(something: String) {
        assertDependencies()
        //Handle fetched data here
    }
}
