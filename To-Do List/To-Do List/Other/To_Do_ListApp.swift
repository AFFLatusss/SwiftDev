//
//  To_Do_ListApp.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import SwiftUI
import FirebaseCore
@main
struct To_Do_ListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

