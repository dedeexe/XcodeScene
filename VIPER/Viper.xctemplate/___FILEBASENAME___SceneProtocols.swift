//
//  ___VARIABLE_sceneName___View.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

///
/// ___VARIABLE_sceneName___ View Protocol
///
public protocol ___VARIABLE_sceneName___View : class {
    func show(something:String)
}

///
/// ___VARIABLE_sceneName___ Presenter Protocol
///
public protocol ___VARIABLE_sceneName___Module : class {
    func doSomething()
}

///
/// ___VARIABLE_sceneName___ Interactor Input Protocol
///
public protocol ___VARIABLE_sceneName___Input : class {
    func get(something:String)
}

///
/// ___VARIABLE_sceneName___ Interactor Output Protocol
///
public protocol ___VARIABLE_sceneName___Output : class {
    func fetch(something:String)
}

///
/// ___VARIABLE_sceneName___ Router Protocol
///
public protocol ___VARIABLE_sceneName___Wireframe : class {
    func gotoSomeplace()
}
