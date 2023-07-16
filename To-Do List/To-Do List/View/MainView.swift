//
//  ContentView.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LogInView()
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
