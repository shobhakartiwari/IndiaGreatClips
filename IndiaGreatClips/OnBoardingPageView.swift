//
//  OnBoardingPageView.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/15/23.
//

import SwiftUI

struct OnBoardingPageView: View {
    let imageName: String
    let title: String
    let description: String
    let showDoneButton: Bool
    var nextAction: () -> Void
    
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 250)
                .foregroundColor(.mint)
            
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            
            Text(description)
                .font(.body)
                .padding(.horizontal, 40)
                .foregroundColor(.gray)
            
            if showDoneButton {
                Button("Lets get started") {
                    nextAction()
                }
                .buttonStyle(.bordered)
                .padding()
            }
        }.padding()
    }
}

#Preview {
    OnBoardingPageView(imageName: "figure.snowboarding", title: "India's Great Clip", description: "Saloon services ", showDoneButton: true, nextAction: {})
}
