//
//  NewsFeedController.swift
//  SnapKitTest
//
//  Created by Olka on 03.03.2021.
//

import Foundation
import SnapKit
import UIKit


class NewsFeedController:  UIViewController, UITabBarDelegate, UITableViewDataSource, UITableViewDelegate {
    private var tableView: UITableView!
    private var data: ModelRow?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CellOfNews(style: .subtitle, reuseIdentifier: "")
        if let data = self.data
        {
            cell.titleLabel.text = data.title
            cell.descriptionLabel.text = data.subtitle
            cell.dateLabel.text = data.date
        }
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.addTableView()
        self.setDataModel()
    }

    private func addTableView()
    {
        self.tableView = UITableView()
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.view.addSubview(self.tableView)
        self.tableView.snp.makeConstraints { (make) in
            make.left.right.bottom.top.equalToSuperview()
        }
    }

    private func setDataModel()
    {
        let service = DataService()
        let data = service.getData()
        self.data = data
    }

}
