//
//  LoginView.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/25/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginViewViewModel: LoginViewViewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(headerOne: "Remind Me", headerTwo: "Get things Done", rotation: 15, offsetY: -100, backgroundColor: .orange)
                
                // Login Form
                
                Form {
                    TextField("Email Address", text: $loginViewViewModel.email)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    SecureField("Password", text: $loginViewViewModel.password)
                    
                    AppButton(buttonText: "Log In", buttonColor: .blue) {
                        // Attempt to log in
                    }
                }
                
                // Create Account
                VStack(spacing: 15){
                    Text("New around here?")
                        .font(.subheadline)
                    
                    NavigationLink {
                        RegisterView()
                    } label: {
                        Text("Create an account")
                            .font(.title3)
                            .bold()
                    }
                    
                }
                
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
