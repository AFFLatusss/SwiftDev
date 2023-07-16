//
//  TLButton.swift
//  To-Do List
//
//  Created by 余荣键 on 16/07/2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: ()->Void
    
    var body: some View {
        Button {
            //Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
//        .padding()
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Title",
                 background: .yellow){
//            Action
        }
        
    }
}
