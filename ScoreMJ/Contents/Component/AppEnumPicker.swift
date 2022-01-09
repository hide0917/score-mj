//
//  AppEnumPicker.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/04.
//

import Foundation
import Combine
import SwiftUI

struct AppEnumPicker: View {
    let selection: Any
    let label: String
    let contents: [String]
    
    init(selection: Any, label: String, contents: [String]) {
        self.selection = selection
        self.label = label
        self.contents = contents
    }
    
    var body: some View {
        Picker(selection: $selection,
               label: Text(self.label),
               content: {
            Text("1位").tag(1)
            Text("2位").tag(2)
            Text("3位").tag(3)
            Text("4位").tag(4)
        })
    }
}

struct AppEnumPicker_Previews: PreviewProvider {
    static let selection = Rank._1

    static var previews: some View {
        AppEnumPicker(selection: selection, label: "test", contents: [])
    }
}
