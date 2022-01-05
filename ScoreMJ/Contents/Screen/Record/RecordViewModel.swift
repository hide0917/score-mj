//
//  RecordViewModel.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/04.
//

import Foundation
import SwiftUI

class RecordViewModel: ObservableObject {

    @Published var date = Date()

    @Published var selfRank = Rank._1
    
    @Published var firstScore = ""
    
    @Published var secondScore = ""
    
    @Published var thirdScore = ""
    
    @Published var fourthScore = ""

}
