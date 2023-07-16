//
//  RegisterView.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import SwiftUI

struct RegisterView: View {
    
    var body: some View {
        
        HeaderView(title: "Register", subtitle: "Be Organised", angle: -15, background: .orange)
        
//        ZStack {
//            RoundedRectangle(cornerRadius: 0)
//                .foregroundColor(Color.orange)
//                .rotationEffect(Angle(degrees:-15 ))
//
//            VStack{
//                Text("Register")
//                    .foregroundColor(Color.white)
//                    .font(.system(size:50))
//                    .bold()
//
//                Text("Be organised")
//                    .font(.system(size:30))
//                    .foregroundColor(Color.white)
//            }
//        }
//        .frame(width: UIScreen.main.bounds.width * 2,
//               height:300)
//        .offset(y:-100)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
