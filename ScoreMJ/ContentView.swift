//
//  ContentView.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeViewController()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("ホーム")
                }
            RecordViewController()
                .tabItem {
                    Image(systemName: "note.text")
                    Text("記録")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
