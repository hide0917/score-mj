//
//  RankEnum.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/04.
//

enum Rank: String, CaseIterable {
    case _1 = "1位"
    case _2 = "2位"
    case _3 = "3位"
    case _4 = "4位"
}

extension Rank: Identifiable {
    var id: Self { self }
}
