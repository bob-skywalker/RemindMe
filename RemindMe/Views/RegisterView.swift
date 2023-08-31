//
//  RegisterView.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/25/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            // Header
            HeaderView(headerOne: "Register", headerTwo: "Start organizing todos", rotation: -4, offsetY: -100, backgroundColor: .blue.opacity(0.75))
            
            // Register Form
            Form {
                TextField("Full Name", text: $name)
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textInputAutocapitalization(.never)
                
                SecureField("Password", text: $password)
                
                AppButton(buttonText: "Register", buttonColor: .blue) {
                    // Attempt to register
                }
            }
            
            // Bottom - EMPTY
            
            Spacer()
            
            VStack {
                Text("Back to Login")
                    .foregroundColor(.blue).bold()
                    .font(.title2)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
