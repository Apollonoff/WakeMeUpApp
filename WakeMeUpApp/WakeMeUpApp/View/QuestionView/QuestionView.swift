//
//  QuestionView.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 15.09.2023.
//

import SwiftUI

struct QuestionView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color(cgColor: bgColor).ignoresSafeArea()
            VStack {
                SortPicker()
                ScrollView {
                    QuestionCell(questionName: "bbbg")
                    QuestionCell(questionName: "bbbg")
                    QuestionCell(questionName: "bbbg")
                    QuestionCell(questionName: "bbbg")
                    QuestionCell(questionName: "bbbg")
                    QuestionCell(questionName: "bbbg")
//                    QuestionCell()
//                    QuestionCell()
//                    QuestionCell()
//                    QuestionCell()
//                    QuestionCell()
                }
            }
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
