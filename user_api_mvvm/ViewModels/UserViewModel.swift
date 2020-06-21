//
//  UserViewModel.swift
//  user_api_mvvm
//
//  Created by tientran on 6/21/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation


class UserViewModel : ObservableObject {
    private var userService : UserService
    
    @Published var userList : [User] = []
    
    init() {
        self.userService =  UserService()
    }
    
    func fetchUser() {
        self.userService.getUsers { (user) in
            if let user = user{
                DispatchQueue.main.sync {
                    self.userList = user
                }
            }
        }
    }
}
