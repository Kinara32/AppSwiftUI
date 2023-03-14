//
//  ProductRow.swift
//  AppSwiftUI
//
//  Created by Matvei Bykadorov on 13.03.2023.
//

import SwiftUI

struct ProductRow: View {
    
    var categoryName: String
    var item: [ProductResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text(categoryName).font(.headline)
            ScrollView(.horizontal) {
                HStack() {
                    ForEach(item) { item in
                        NavigationLink(destination: DetailScreen(object: item)){
                            ProductItem(object: item)
                        }
                    }
                }
            }
            .frame(height: 200)
        }
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, item: Array(materialResponse.prefix(3)))
    }
}
