//
//  ContentView.swift
//  AppSwiftUI
//
//  Created by Matvei Bykadorov on 06.03.2023.
//

import SwiftUI

struct FriendsList: View {
    var body: some View {
        NavigationView {
            List(userResponse) { user in
                Cell(user: user)
            }
            .navigationTitle(Text("Friends"))
        }
    }
}

struct FriendsList_Previews: PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
