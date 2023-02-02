//
//  HitsNewsListView.swift
//  Hit News List
//
//  Created by chiawei wen on 2/1/23.
//

import Foundation
import UIKit

class HitsNewsListView: UIView {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(HitsNewsListCustomCell.self, forCellReuseIdentifier: HitsNewsListCustomCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints () {
        addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
}
