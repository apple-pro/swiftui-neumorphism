//
//  NeumorphicButton.swift
//  NeumorphismSwiftUI
//
//  Created by StartupBuilder.INFO on 9/6/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct SimpleButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(30)
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(Color.offWhite)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(Circle().fill(LinearGradient(.black, .clear)))
                        )
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                        )
                    } else {
                        Circle()
                            .fill(Color.offWhite)
                            .shadow(color: .shadowBot, radius: 10, x: 10, y: 10)
                            .shadow(color: .shadowTop, radius: 10, x: -5, y: -5)
                    }
                }
        )
    }
}

struct NeumorphicButton: View {
    var body: some View {
        Button(action: {
            print("Tap! Tap!")
        }) {
            Image(systemName: "heart.fill")
                .foregroundColor(.gray)
        }.buttonStyle(SimpleButtonStyle())
    }
}

struct NeumorphicButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicButton()
    }
}
