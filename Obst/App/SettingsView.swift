//
//  SettingsView.swift
//  Obst
//
//  Created by AlexKinder on 2/27/21.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label: SettingsLabelView(labelText: "Obst", labelImage: "info.circle")
                        ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9.0)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients including potassium, dietary fibers, and much more!")
                                .font(.footnote)
                        }//: HSTACK
                    } //: GROUPBOX
                    
                    // MARK: - SECTION 2
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.icon")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack {
                            Text("Developr").foregroundColor(.gray)
                            Spacer()
                            Text("John / Jane")
                        }//: HSTACK
                    } //: GROUPBOX
                    
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Image(systemName: "xmark")
                                        }
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
