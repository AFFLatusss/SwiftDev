//
//  LoginViewViewModel.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        
        guard validate()
        else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
        
        print("Called")
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            
            errorMessage = " Please filled in all fields"
            
            return false
        }
        
        guard email.contains("@") && email.contains(".")
        else{
            errorMessage = "Please enter valid email"
            return false
        }
        
        return true
    }
    
    
} 
