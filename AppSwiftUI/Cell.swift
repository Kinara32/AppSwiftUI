//
//  Cell.swift
//  AppSwiftUI
//
//  Created by Matvei Bykadorov on 06.03.2023.
//

import SwiftUI

struct Cell: View {
    
    var user: UserResponse
    
    var body: some View {
        VStack(spacing: 16.0) {
            TopView(user: user)
            Text(user.text)
                
        }
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(user: userResponse[0])
    }
}
