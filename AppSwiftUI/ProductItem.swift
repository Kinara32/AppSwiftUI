//
//  ProductItem.swift
//  AppSwiftUI
//
//  Created by Matvei Bykadorov on 13.03.2023.
//

import SwiftUI

struct ProductItem: View {
    
    var object: ProductResponse
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .cornerRadius(15)
                .frame(width: 170, height: 170)
        }
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(object: materialResponse[0])
    }
}
