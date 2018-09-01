//
//  SecondViewController.swift
//  TestTabeviewReload
//
//  Created by 廖源迪 on 2018/8/24.
//  Copyright © 2018年 yuandiLiao. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    var tableView:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tableview = UITableView(frame: self.view.bounds, style: .grouped)
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(TestTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(TestTableViewCell.self))
        tableview.estimatedRowHeight = 0
        self.view.addSubview(tableview)
        self.tableView = tableview
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return 1
        }
        if section == 1 {
            return 0
        }
        return 10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 5
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UILabel()
        header.text = "section" + String(section)
        return header
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIView()
        footer.backgroundColor = UIColor.orange
        return footer
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(TestTableViewCell.self)) as! TestTableViewCell
        cell.tag = Int(String(indexPath.section + 1) + String(indexPath.row))!
        cell.textLabel?.text = "cell" + String(indexPath.section) + String(indexPath.row)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.reloadRows(at: [indexPath], with: .none)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
