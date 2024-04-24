//
//  OpinionCardView.swift
//  pz
//
//  Created by Patrycja Zadziłko on 24/04/2024.
//

import SwiftUI




struct OpinionCardView: View {
    let opinion: Opinion
    let imageSize: CGFloat = 50

    var body: some View {
        HStack {
            Image(opinion.img)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: imageSize, height: imageSize)
                .cornerRadius(imageSize / 2)

            VStack(alignment: .leading, spacing: 8) {
                Text(opinion.title)
                    .font(.headline)
                Text(opinion.username)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(opinion.text)
                    .font(.body)
                    .foregroundColor(.black)
                    .lineLimit(3)
                Text(opinion.date)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.leading, 8)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
    }
}


let Op = opinions[0]

#Preview {
    OpinionCardView(opinion: Op)
}
