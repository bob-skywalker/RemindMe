//
//  LoginViewViewModel.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/25/23.
//

import SwiftUI

class LoginViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    init(){}
    
    func login() {}
    
    func validate() {}
}
