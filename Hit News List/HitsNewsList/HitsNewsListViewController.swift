//
//  HitsNewsListViewController.swift
//  Hit News List
//
//  Created by chiawei wen on 2/1/23.
//

import Foundation
import UIKit

class HitsNewsListViewController: UIViewController {
    
    let contentView = HitsNewsListView()
    let hitsNewsListViewModel = HitsNewsListViewModel()
    var hitsNewsList: [Hits]?
    
    override func loadView() {
        view = contentView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.tableView.delegate = self
        contentView.tableView.dataSource = self
        hitsNewsListViewModel.fetchHitsNews { [weak self] hits in
            self?.hitsNewsList = hits
            DispatchQueue.main.async {
                self?.contentView.tableView.reloadData()
            }
        }
    }
}

extension HitsNewsListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hitsNewsList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = contentView.tableView.dequeueReusableCell(withIdentifier: HitsNewsListCustomCell.identifier, for: indexPath) as? HitsNewsListCustomCell else { return UITableViewCell() }
        guard let hitTitle = hitsNewsList?[indexPath.row].title else { return UITableViewCell() }
        cell.configureTextLabel(with: hitTitle)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
