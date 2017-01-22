//
//  TableViewController.swift
//  SwiftyFixxBuzz
//
//  Created by Rick Windham on 12/12/14.
//  Copyright (c) 2014 Rick Windham. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.contentInset.top = 20.0
        self.tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "fizzBuzzCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10000
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "fizzBuzzCell", for: indexPath) as UITableViewCell

        cell.textLabel?.text = fizzBuzz(indexPath.row)
        return cell;
    }
}

