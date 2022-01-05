//
//  AppNumberFieldWithLabel.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/05.
//

import SwiftUI

struct AppNumberFieldWithLabel: View {
    let label: String
    let placeHolder: String
    @Binding private var field: String
    
    init(label: String, placeHolder: String, field: Binding<String>) {
        self.label = label
        self.placeHolder = placeHolder
        self._field = field
    }
    
    var body: some View {
        HStack {
            Text(label)
            Spacer()
            AppNumberField(placeHolder: placeHolder, field: _field)
        }
    }
}

struct AppNumberFieldWithLabel_Previews: PreviewProvider {
    static var previews: some View {
        AppNumberFieldWithLabel(label: "Label", placeHolder: "placeHolder", field: .constant("12345"))
            .previewLayout(.fixed(width: 250, height: 40))
    }
}
