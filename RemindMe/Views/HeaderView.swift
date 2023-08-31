//
//  HeaderView.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/31/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.orange)
                .rotationEffect(Angle(degrees: 15))
                .ignoresSafeArea()
            
            VStack(spacing: 15){
                Text("Remind Me")
                    .font(.custom("TimesNewRomanPSMT", size: 50))
                    .bold()
                
                Text("Get things done")
                    .font(.custom("Arial", size: 24))
            }
            .padding(.top, 30)
            .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width * 2, height: 300)
        .offset(y: -100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
