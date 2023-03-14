//
//  DetailScreen.swift
//  AppSwiftUI
//
//  Created by Matvei Bykadorov on 14.03.2023.
//

import SwiftUI

struct DetailScreen: View {
    
    var object: ProductResponse
    
    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 20) {
                Image(object.image)
                    .resizable()
                    .cornerRadius(30)
                    .frame(width: 170, height: 170)
                    .shadow(radius: 30)
                Text(object.name)
                    .font(.title)
                    .lineLimit(nil)
            }
            HStack(spacing: 30.0) {
                VStack {
                    Text("\(object.lessons)")
                        .font(.title)
                    Text("Lessons")
                        .font(.body)
                        .fontWeight(.medium)
                }
                VStack {
                    Text("\(object.students)")
                        .font(.title)
                    Text("Students")
                        .font(.body)
                        .fontWeight(.medium)
                }
            }
            VStack(alignment: .leading, spacing: 12.0) {
                Text("Описание")
                    .font(.title)
                Text(object.description)
            }
            Spacer()
        }
        .padding()
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(object: materialResponse[2])
    }
}
