//
//  NeumorphicCard.swift
//  NeumorphismSwiftUI
//
//  Created by StartupBuilder.INFO on 9/6/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct NeumorphicCard: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.offWhite)
            .frame(width: 300, height: 300)
            .shadow(color: Color.shadowBot, radius: 10, x: 10, y: 10)
            .shadow(color: Color.shadowTop, radius: 10, x: -5, y: -5)
    }
}

struct NeumorphicCard_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicCard()
    }
}
