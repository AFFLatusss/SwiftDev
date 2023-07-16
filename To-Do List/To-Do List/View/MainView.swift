//
//  ContentView.swift
//  To-Do List
//
//  Created by 余荣键 on 14/07/2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
            //signed in
            ToDoListView()
        } else {
            LogInView()
        }
        
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
