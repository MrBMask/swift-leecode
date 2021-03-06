//
//  ViewController.swift
//  ComputeCode
//
//  Created by 郝靓 on 2021/8/4.
//

import UIKit



class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var titleAry = ["排序","数组","字符串","链表"]
    
    var tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSubView()
        
    }
    
    func tableViewSubView() {
        self.tableview = UITableView(frame: self.view!.frame, style: UITableView.Style.plain)
        self.tableview.dataSource = self;
        self.tableview.delegate = self;
        self.view!.addSubview(self.tableview)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titleAry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableview.dequeueReusableCell(withIdentifier: "identifier")
        if (cell == nil) {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "identifier")
        }
        cell?.textLabel?.text = self.titleAry[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc: UIViewController? = nil
        
        switch indexPath.row {
        case 0:
            vc = SortViewController.init()
        case 1:
            vc = ArrayVC.init()
        case 2:
            vc = StringVC.init()
        case 3:
            vc = ListVC.init()
        default:break
        }
        vc?.view.backgroundColor = .white
        vc?.title = self.titleAry[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: false)
    }
        
   
    
}

