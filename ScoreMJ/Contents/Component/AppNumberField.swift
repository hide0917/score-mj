//
//  AppNumbersAndPunctuationField.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/05.
//

import SwiftUI
import Combine

struct AppNumberField: View {
    let placeHolder: String
    @Binding private var field: String
    
    init(placeHolder: String, field: Binding<String>) {
        self.placeHolder = placeHolder
        self._field = field
    }
    
    var body: some View {
        TextField(self.placeHolder, text: _field)
            // マイナス記号を使わせたいので、numberPadは使用しない
            .keyboardType(.numbersAndPunctuation)
            .onReceive(Just(field)) { newValue in
                let filtered = newValue.filter { "-0123456789".contains($0) }
                if filtered != newValue {
                    self.field = filtered
                }
            }
            .frame(width: 100)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.trailing)
    }
}

struct AppNumberField_Previews: PreviewProvider {
    static var previews: some View {
        AppNumberField(placeHolder: "placeHolder", field: .constant("12345"))
            .previewLayout(.fixed(width: 150, height: 40))
    }
}
