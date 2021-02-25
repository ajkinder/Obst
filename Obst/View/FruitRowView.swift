//
//  FruitRowView.swift
//  Obst
//
//  Created by AlexKinder on 2/25/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTIES
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .trailing)
                )
                .cornerRadius(8)
            } //: HStack
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
