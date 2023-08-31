//
//  HeaderView.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/31/23.
//

import SwiftUI

struct HeaderView: View {
    var headerOne: String = ""
    var headerTwo: String = ""
    var rotation: Double = 0
    var offsetY: CGFloat = 0
    var backgroundColor: Color = .orange
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: rotation))
                .ignoresSafeArea()
            
            VStack(spacing: 15){
                Text(headerOne)
                    .font(.custom("TimesNewRomanPSMT", size: 50))
                    .bold()
                
                Text(headerTwo)
                    .font(.custom("Arial", size: 24))
            }
            .padding(.top, 30)
            .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width * 2.2, height: 300)
        .offset(y: offsetY)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
