//
//  UserService.swift
//  user_api_mvvm
//
//  Created by tientran on 6/21/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import Foundation


class UserService{
    
    func getUsers(completion : @escaping ([User]?) -> ()){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else{
            print("url")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, respone, error) in
            guard let data = data, error == nil else{
                completion(nil)
                return
            }
            
            let userRespone = try? JSONDecoder().decode([User].self, from: data)
            
            if let userRespone = userRespone{
                let user = userRespone
                completion(user)
            }
            else{
                completion(nil)
                return
            }
            
        }.resume()
        
        
    }
}
