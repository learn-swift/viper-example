//
// Created by Duc Nguyen
// Copyright (c) 2016 Duc Nguyen. All rights reserved.
//

import Foundation

class TodoInteractor: TodoInteractorInputProtocol
{
    weak var presenter: TodoInteractorOutputProtocol?
    var APIDataManager: TodoAPIDataManagerInputProtocol?
    var localDatamanager: TodoLocalDataManagerInputProtocol?
    
    init() {}
}