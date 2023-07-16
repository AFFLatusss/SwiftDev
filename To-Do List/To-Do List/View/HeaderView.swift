//
//  HeaderView.swift
//  To-Do List
//
//  Created by 余荣键 on 16/07/2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle:Double
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size:30))
                    .foregroundColor(Color.white)
                }
            .padding(.top, 30)
            }
        .frame(width: UIScreen.main.bounds.width * 3,
               height:300)
        .offset(y:-100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title", subtitle: "subtitle", angle: 15, background: Color.blue)
    }
}
