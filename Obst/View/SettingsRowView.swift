//
//  SettingsRowView.swift
//  Obst
//
//  Created by AlexKinder on 3/24/21.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(name).foregroundColor(.gray)
            Spacer()
            if (content != nil) {
                Text(content!)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }//: HSTACK
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
