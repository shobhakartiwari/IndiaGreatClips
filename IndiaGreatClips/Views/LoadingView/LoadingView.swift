//
//  LoadingView.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/17/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView("Loading")
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
                .scaleEffect(2)
        }
    }
}

#Preview {
    LoadingView()
}
