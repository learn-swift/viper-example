//
// Created by Duc Nguyen
// Copyright (c) 2016 Duc Nguyen. All rights reserved.
//

import Foundation

protocol TodoViewProtocol: class
{
    var presenter: TodoPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol TodoWireFrameProtocol: class
{
    static func presentTodoModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol TodoPresenterProtocol: class
{
    var view: TodoViewProtocol? { get set }
    var interactor: TodoInteractorInputProtocol? { get set }
    var wireFrame: TodoWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol TodoInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol TodoInteractorInputProtocol: class
{
    var presenter: TodoInteractorOutputProtocol? { get set }
    var APIDataManager: TodoAPIDataManagerInputProtocol? { get set }
    var localDatamanager: TodoLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol TodoDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol TodoAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol TodoLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
