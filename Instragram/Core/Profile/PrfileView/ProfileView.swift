//
//  ProfileView.swift
//  Instragram
//
//  Created by Mashfikur Rahman on 10/28/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
//    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var post: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        ScrollView{
        
        //  Header views
            
        ProfileHeaderView(user: user)
            
            
        //  Post grid view
            PostGridView(post: post)
            
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}



#Preview {
    ProfileView(user: User.MOCK_USERS[1])
}
