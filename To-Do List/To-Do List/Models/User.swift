//
//  User.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
