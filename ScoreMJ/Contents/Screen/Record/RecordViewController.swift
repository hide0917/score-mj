//
//  RecordViewController.swift
//  ScoreMJ
//
//  Created by Hidemitsu Shmizu on 2022/01/04.
//

import SwiftUI
import Combine

struct RecordViewController: View {
    @ObservedObject var viewModel = RecordViewModel()
    
    var body: some View {
        VStack {
            AppTitle(title: "Record")
            VStack {
                DatePicker("日付",
                           selection: $viewModel.date,
                           displayedComponents: [.date]
                ).padding(.bottom, 12)
                HStack {
                    Text("順位")
                    Spacer()
                    Picker("Select Picker", selection: $viewModel.selfRank) {
                        ForEach(Rank.allCases) { rank in
                            Text(rank.rawValue)
                        }
                    }.pickerStyle(SegmentedPickerStyle()).foregroundColor(.red)
                }.padding(.bottom, 12)
                scoreArea
                Spacer()
            }.padding()
        }
    }
    
    var scoreArea: some View {
        HStack {
            Text("得点")
            VStack {
                AppNumberFieldWithLabel(label: Rank._1.rawValue, placeHolder: "得点", field: $viewModel.firstScore)
                    .padding(.leading, 100)
                AppNumberFieldWithLabel(label: Rank._2.rawValue, placeHolder: "得点", field: $viewModel.secondScore)
                    .padding(.leading, 100)
                AppNumberFieldWithLabel(label: Rank._3.rawValue, placeHolder: "得点", field: $viewModel.thirdScore)
                    .padding(.leading, 100)
                AppNumberFieldWithLabel(label: Rank._4.rawValue, placeHolder: "得点", field: $viewModel.fourthScore)
                    .padding(.leading, 100)
            }
        }
    }
}

struct RecordViewController_Previews: PreviewProvider {
    static var previews: some View {
        RecordViewController()
    }
}
