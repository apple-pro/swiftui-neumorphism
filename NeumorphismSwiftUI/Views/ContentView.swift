//
//  ContentView.swift
//  NeumorphismSwiftUI
//
//  Created by StartupBuilder.INFO on 9/6/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225/255, green: 225/255, blue: 235/255)
    static let shadowTop = Color.white.opacity(0.7)
    static let shadowBot = Color.black.opacity(0.2)
}

extension LinearGradient {
    
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    
    var body: some View {
        ZStack {
            Color.offWhite
            
            VStack {
                Text("Neumorphism Demo")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Card").tag(0)
                    Text("Button").tag(1)
                    Text("Etc").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 24)
                
                Spacer()

                    if pickerSelectedItem == 1 {
                        NeumorphicButton()
                    } else {
                        NeumorphicCard()
                    }
                
                Spacer()
                
            }.padding(.top, 30)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
