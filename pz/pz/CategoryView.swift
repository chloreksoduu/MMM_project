//
//  CategoryView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 10/04/2024.
//

import SwiftUI

struct CategoryView: View {
    let isActive: Bool;
    let text: String;
    var body: some View {
        VStack(alignment: .leading,spacing: 2){
            Text(text)
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color.blue : Color.gray)
                .tracking(isActive ? 2.0 : 0.0)
            if(isActive){
                Color.blue
                    .frame(width: 15,height: 2)
                    .clipShape(Capsule())
                    .tracking(2.0)
            }
        }

    }
}

