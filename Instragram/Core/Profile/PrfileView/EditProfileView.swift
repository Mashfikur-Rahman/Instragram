//
//  EditProfileView.swift
//  Instragram
//
//  Created by Mashfikur Rahman on 11/2/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: PhotosPickerItem?
    @State private var fullname = ""
    @State private var bio = ""
    
    
    var body: some View {
        VStack {
//            Toolbar
            VStack {
                HStack{
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button {
                        print("update profile info")
                    } label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                
                Divider()
            }
            
    //            eidt profile picture
            PhotosPicker(selection: $selectedImage) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                
            }
            
            Text("Edit your profile")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            Divider()
            
    //            edit profile information
            VStack {
                EditProfileRowView(title: "Name", placeholder: "Enter your name", text: $fullname)
                
                EditProfileRowView(title: "Bio", placeholder: "Type your Bio", text: $bio)
            }
            Spacer()
        }
    }
}

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack{
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            
            VStack{
                TextField(placeholder, text: $text)
                    
                Divider()
            }
        }
    }
}


#Preview {
    EditProfileView()
}
