//
//  MyViewController.swift
//  msg_2(twice_final)
//
//  Created by GSM02 on 2022/08/30.
//

import UIKit

class MyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell: TableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as?
                TableViewCell else { return UITableViewCell()}
        cell.textLabel?.text = String(indexPath.row+1)
        cell.index = indexPath.row
        cell.cellDelegate = self
        return cell
        
    }
    
    var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        // 궁금한점. 왜? tableView 에 rowHeight를 하는가? Cell에다가 하는것도 가능? 보통 셀에다가 rowHeight라고 생각 할 텐데.
        tableView.rowHeight = 50
        return tableView
    }()
    
    func tableViewSetting() {
        self.view.addSubview(self.tableView)
        self.tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -150 ).isActive = true
        
        // 셀 등록하기
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.tableViewSetting()
        // 데이터 소스를 self로 지정
        self.tableView.dataSource = self
        // 델리게이트를 self로 지정
        self.tableView.delegate = self
        self.navigationItem.title = "TableView"
    }
    
    
}

extension MyViewController: ContentsMainTextDelegate{
    
    func categoryButtonTapped(index: Int) {
        
        let PrintVC = PrintViewController()
        
        PrintVC.printLabel.text = String(index)
        self.navigationController?.pushViewController(PrintVC, animated: true)
        print(index)
        
        
        
    }

}

