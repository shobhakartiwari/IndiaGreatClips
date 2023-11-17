//
//  SalonListCell.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/17/23.
//

import SwiftUI

struct SalonListCell: View {
    
    let salon: Salon
    
    var body: some View {
        HStack {
            RemoteImage(image: Image(salon.imageURL, bundle: nil))
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 130)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(salon.name ?? "")
                    .font(.title2)
                    .fontWeight(.medium)
                Text(salon.address ?? "")
                    .font(.title3)
                    .fontWeight(.light)
                HStack {
                    Text("\(salon.distance ?? ""),")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                    Text(salon.openingTime ?? "")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                }
            }
            .padding(.leading)
        }
    }
}

#Preview {
    SalonListCell(salon: Salon(id:001, name: "Eola Commons", cost:10.99, address: "3150 N Aurora, Aurora, IL", currentStatus: "Opens soon", openingTime: "Opens 9AM", distance: "1.7 mi", imageURL: "salon1"))
}
