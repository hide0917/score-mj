//
//  EnumPicker.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/04.
//

import SwiftUI

struct AppTitle: View {
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
        .background(Color.myColor(colorCode: .titleBackground))
    }
}

struct AppTitle_Previews: PreviewProvider {
    static var previews: some View {
        AppTitle(title: "Dummy Title")
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
