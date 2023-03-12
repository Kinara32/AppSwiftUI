//
//  ContentView.swift
//  AppSwiftUI
//
//  Created by Matvei Bykadorov on 12.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    var category: [String: [ProductResponse]] {
        .init(grouping: materialResponse, by: {$0.category.rawValue})
    }
    var body: some View {
        NavigationView {
            List {
                Text("Hello")
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
