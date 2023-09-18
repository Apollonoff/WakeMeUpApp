//
//  Data.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 08.09.2023.
//

import Foundation


//let quizz: [QuizModel] = load(

//fileprivate var quizURL: URL = URL(string: "")
func getAllPosts(_ complitionHandler: ([QuizModel]) -> Void) {
    
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
    else { return }
    URLSession.shared.dataTask(with: url) { (data, response, error) in
        
        if error != nil {
            print("Something going wrong with error: \(String(describing: error))")
        } else {
            if let resp  = response as? HTTPURLResponse,
               resp.statusCode == 200,
               let responseData = data {
                
                let posts = try? JSONDecoder().decode([QuizModel].self, from: responseData)
                
//                    complitionHandler(posts ?? [])
              
            }
        }
        
    }.resume()
}
