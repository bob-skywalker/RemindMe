//
//  AppButton.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/31/23.
//

import SwiftUI

struct AppButton: View {
    let buttonText: String
    let buttonColor: Color
    let action: () -> Void
    
    var body: some View {
        
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(buttonColor)
                
                Text(buttonText)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .frame(height: 40)
        
    }
}

struct AppButton_Previews: PreviewProvider {
    static var previews: some View {
        AppButton(buttonText: "Register", buttonColor: .blue) {} 
    }
}
