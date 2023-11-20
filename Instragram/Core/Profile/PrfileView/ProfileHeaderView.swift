//
//  ProfileHeaderView.swift
//  Instragram
//
//  Created by Mashfikur Rahman on 10/29/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    @State var showEditProfile = false
    
    var body: some View {
        VStack(spacing: 10) {
    //  Profile picture and status
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
    // User Stack view list: Post, Follwers, Following
                HStack(spacing: 8 ){
                    UserStackViews(value: 50, title: "Posts")
                    
                    UserStackViews(value: 40, title: "Followers")
                    
                    UserStackViews(value: 30, title: "Following")
                }
            }
            .padding(.horizontal)
            
    //   user name
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
    //  User bio
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
//                Text(user.username)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
    //   Action Button
            Button {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("Follow user")
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(8)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1))
            }
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            Text("edit profile")
        }
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
