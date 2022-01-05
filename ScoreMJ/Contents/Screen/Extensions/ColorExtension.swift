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
        case background = "C2EEFF"
    }
    
    static func myColor(colorCode: Color.AppColor) -> Color {
        return Color(UIColor(hex: colorCode.rawValue))
    }
}
