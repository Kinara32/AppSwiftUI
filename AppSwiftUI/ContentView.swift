//
//  ContentView.swift
//  AppSwiftUI
//
//  Created by Matvei Bykadorov on 12.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String: [ProductResponse]] {
        .init(grouping: materialResponse, by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView {
            List {
                Cell(user: swiftbook)
                    .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    ProductRow(categoryName: key, item: categories[key]!)
                }
                .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                NavigationLink("Наши преподаватели", destination: FriendsList())
            }
            .navigationBarTitle(Text("Homepage"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
