//
// Created by Duc Nguyen
// Copyright (c) 2016 Duc Nguyen. All rights reserved.
//

import Foundation

class TodoPresenter: TodoPresenterProtocol, TodoInteractorOutputProtocol
{
    weak var view: TodoViewProtocol?
    var interactor: TodoInteractorInputProtocol?
    var wireFrame: TodoWireFrameProtocol?
    
    init() {}
}