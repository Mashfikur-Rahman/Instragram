//
//  ContentView.swift
//  Instragram
//
//  Created by Mashfikur Rahman on 10/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContenetViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            } else if let currentUser = viewModel.currentUser {
                MainTabView(user: currentUser)
            }
        }
    }
}

#Preview {
    ContentView()
}
