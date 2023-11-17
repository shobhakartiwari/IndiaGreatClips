//
//  HomeView.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/17/23.
//

import SwiftUI

struct HomeView: View {
    @State private var nearBySalonList = MockData.salonItems
    var body: some View {
        ZStack {
            NavigationView {
                List(nearBySalonList) { salon  in
                    // populates cells with salons
                    SalonListCell(salon: salon)
                }
                .navigationTitle("Saloons")
            }
            .onAppear {
                //viewModel.getAppetizers()
            }
        }
    }
}

#Preview {
    HomeView()
}
