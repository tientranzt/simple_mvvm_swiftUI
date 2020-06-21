//
//  UserModel.swift
//  user_api_mvvm
//
//  Created by tientran on 6/21/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation


struct User : Decodable , Identifiable{
    var id : Int
    var name : String
    var email : String
    var address : UserAdress
}

struct UserAdress : Decodable {
    var street : String
    var city : String
}
