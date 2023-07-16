//
//  LogInView.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import SwiftUI

struct LogInView: View {
    var body: some View {
        VStack{
            // header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
                
                VStack{
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Text("Get things done")
                        .font(.system(size:30))
                        .foregroundColor(Color.white)
                }
                }
            .frame(width: UIScreen.main.bounds.width * 3,
                   height:300)
            .offset(y:-100)
            // login Form
            
            // vraete account
            
            Spacer()
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
