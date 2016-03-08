//
// Created by Duc Nguyen
// Copyright (c) 2016 Duc Nguyen. All rights reserved.
//

import Foundation

class TodoWireFrame: TodoWireFrameProtocol
{
    class func presentTodoModule(fromView view: AnyObject)
    {
        // Generating module components
        let view            : TodoViewProtocol = TodoView()
        let presenter       : protocol<TodoPresenterProtocol, TodoInteractorOutputProtocol> = TodoPresenter()
        let interactor      : TodoInteractorInputProtocol = TodoInteractor()
        let APIDataManager  : TodoAPIDataManagerInputProtocol = TodoAPIDataManager()
        let localDataManager: TodoLocalDataManagerInputProtocol = TodoLocalDataManager()
        let wireFrame       : TodoWireFrameProtocol = TodoWireFrame()
        
        // Connecting
        view.presenter              = presenter
        presenter.view              = view
        presenter.wireFrame         = wireFrame
        presenter.interactor        = interactor
        interactor.presenter        = presenter
        interactor.APIDataManager   = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}