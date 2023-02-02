//
//  HitsNewsListCustomCell.swift
//  Hit News List
//
//  Created by chiawei wen on 2/1/23.
//

import Foundation
import UIKit

class HitsNewsListCustomCell: UITableViewCell {
    
    static let identifier = "identifier"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        textLabel?.numberOfLines = 0 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureTextLabel(with title: String) {
        textLabel?.text = title
    }
}
