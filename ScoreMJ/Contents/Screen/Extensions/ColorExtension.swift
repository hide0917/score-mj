//
//  ColorExtension.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/04.
//

import Foundation
import SwiftUI

extension Color {
    enum AppColor: String {
        case background = "EDF3FF"
        case titleBackground = "F7F9F8"
    }
    
    static func myColor(colorCode: Color.AppColor) -> Color {
        return Color(UIColor(hex: colorCode.rawValue))
    }
}
