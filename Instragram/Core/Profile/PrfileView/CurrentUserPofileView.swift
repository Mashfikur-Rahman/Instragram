//
//  CurrentUserPofileView.swift
//  Instragram
//
//  Created by Mashfikur Rahman on 10/29/23.
//

import SwiftUI

struct CurrentUserPofileView: View {
    
    let user: User
    
    var post: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                ProfileHeaderView(user: user)
                
                PostGridView(post: post)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar {           // navigation
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserPofileView(user: User.MOCK_USERS[1])
}
