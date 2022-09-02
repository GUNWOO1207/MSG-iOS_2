//
//  PrintViewController.swift
//  msg_2(twice_final)
//
//  Created by GSM02 on 2022/09/01.
//

import UIKit

class PrintViewController: UIViewController {
    
    var printLabel: UILabel = {
        
        let lable = UILabel()
    
        lable.font = .systemFont(ofSize: 24)
        
        return lable
    }()
  
    func printLabelSetting(){
        
        view.addSubview(printLabel)
        print(printLabel)
        
        printLabel.translatesAutoresizingMaskIntoConstraints = false
        
        printLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        printLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        printLabelSetting()
    }
}
