//
//  RegisterViewViewModel.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore


class RegisterViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var name = ""
    @Published var password = ""
    
    init(){}
    
    func register(){
        print("i am in register")
        guard validate()
        else{
            print("Failed validate")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password){ [weak self] result, error in
            guard let userId = result?.user.uid
            else{
                return
            }
            
            self?.insertUserRecord(id: userId)
        }
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
    
    
    
    
    
    
    private func validate() -> Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            print("invalid input")
            return false
        }
        
        guard email.contains("@"),
              email.contains(".")
        else{
            print("invalid email ")
            return false
        }
        
        guard password.count >= 6
        else{
            print("invalid password")
            return false
        }
        
        return true
    }
    
    
}
