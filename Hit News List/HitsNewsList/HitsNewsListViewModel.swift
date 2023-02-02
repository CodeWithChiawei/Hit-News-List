//
//  HitsNewsListViewModel.swift
//  Hit News List
//
//  Created by chiawei wen on 2/1/23.
//

import Foundation

class HitsNewsListViewModel {
    
    func fetchHitsNews(completion: @escaping ([Hits]) -> Void) {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error)
                return
            }
            
            if let data = data {
                guard let jsonData = try? JSONDecoder().decode(HitsNewsListModel.self, from: data) else { return }
                completion(jsonData.hits)
//                print(jsonData.hits)
            }
        }.resume()
    }
}
