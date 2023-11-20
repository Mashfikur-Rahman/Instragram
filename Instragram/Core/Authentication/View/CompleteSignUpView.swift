//
//  CompleteSignUpView.swift
//  Instragram
//
//  Created by Mashfikur Rahman on 10/29/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Welcome to instagram, mashfik.rahman")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)
            
            Text("Click below to complete registration and start using instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Button {
                print("Complete sign up")
            } label: {
                Text("Complete Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 345, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}
