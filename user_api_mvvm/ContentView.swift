//
//  ContentView.swift
//  user_api_mvvm
//
//  Created by tientran on 6/21/20.
//  Copyright © 2020 tientran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userVM : UserViewModel
    @State private var text = ""
    init() {
        self.userVM = UserViewModel()
        self.userVM.fetchUser()
    }
    var body: some View {
    
        List(self.userVM.userList){ user in
            HStack{
                Text(String(user.id))
                Text(user.name)
                
                // Text(user.email)
                // Text(user.address.street)
                // Text(user.address.city)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
