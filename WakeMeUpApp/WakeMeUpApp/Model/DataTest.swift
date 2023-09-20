//
//  DataTest.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 20.09.2023.
//

import SwiftUI

struct DataTest: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            if let quiz = viewModel.quiz{
//                Text(quiz.first?.correctAnswer ?? "")
                ScrollView{
                    ForEach(quiz) { quiz in
                        HStack {
                            Text(quiz.question ?? "noone")
                            Text(quiz.correctAnswer ?? "")
                            Text(quiz.difficulty ?? "")
                        }
                        
                    }
                }

                
            }
        }
    }
}


struct DataTest_Previews: PreviewProvider {
    static var previews: some View {
        DataTest()
    }
}
