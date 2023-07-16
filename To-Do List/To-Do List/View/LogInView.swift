//
//  LogInView.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import SwiftUI

struct LogInView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationView{
            VStack{
                // header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, background: .pink)
                // login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In",
                             background: .blue
                    ){
                        //attmept login
                    }
                    .padding()
                }
                .offset(y:-50)
                
                // vraete account
                VStack {
                    Text("New user?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
