//
//  OnBoardingView.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/15/23.
//

import SwiftUI

struct OnBoardingView: View {
    var showOnBoarding: Bool
    
    var body: some View {
        OnBoardingPageView(imageName: "figure.snowboarding", title: "India's Great Clip", description: "Saloon services ", showDoneButton: true, nextAction: {})
    }
}

#Preview {
    OnBoardingView(showOnBoarding: true)
}
