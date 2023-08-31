//
//  LoginView.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/25/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()
                
                // Login Form
                
                Form {
                    TextField("Email Address", text: $email)
                    SecureField("Password", text: $password)
                    
                    Button {
                        // Log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    
                }
                
                
                // Create Account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create an account")
                    }
                    
                }
                .padding(.bottom, 20)
                
                Spacer()
            }
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
