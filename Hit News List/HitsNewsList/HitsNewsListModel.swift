//
//  HitsNewsListModel.swift
//  Hit News List
//
//  Created by chiawei wen on 2/1/23.
//

import Foundation

struct HitsNewsListModel: Codable {
    let hits: [Hits]
}

struct Hits: Codable {
    let title: String
}
