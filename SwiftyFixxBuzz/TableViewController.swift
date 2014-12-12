//
//  TableViewController.swift
//  SwiftyFixxBuzz
//
//  Created by Rick Windham on 12/12/14.
//  Copyright (c) 2014 Rick Windham. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.contentInset.top = 20.0
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "fizzBuzzCell")
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10000
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("fizzBuzzCell", forIndexPath: indexPath) as UITableViewCell

        cell.textLabel?.text = fizzBuzz(indexPath.row)
        return cell;
    }
}

