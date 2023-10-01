//
//  Data.swift
//  WakeMeUpApp
//
//  Created by Arseniy Apollonov on 08.09.2023.
//

import Foundation


class ViewModel: ObservableObject {
    @Published private(set) var quiz: [Quiz]?
    
    init() {
        Task.init {
            await fetchData()
        }
    }
    
    func fetchData() async {
        do {
            guard let url = URL(string: "https://the-trivia-api.com/api/questions/") else { return print("Missing URL")}
            
            let urlRequest = URLRequest(url: url)
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            guard (response as? HTTPURLResponse)?.statusCode == 200 else {return print("server error")}
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let decodedData = try decoder.decode([Quiz].self, from: data)
            
            DispatchQueue.main.async {
                self.quiz = decodedData
            }
        }
        catch {
            print("Error fetching data with: \(error)")
        }
    }
    
}

