//
//  TableViewCell.swift
//  msg_2(twice_final)
//
//  Created by GSM02 on 2022/08/30.
//

import UIKit

// 범용성을 위해 class가 아닌 AnyObject로 선언해준다.
protocol ContentsMainTextDelegate: AnyObject {
    // 위임해줄 기능
    func categoryButtonTapped()
}

class TableViewCell: UITableViewCell {
    
    weak var cellDelegate: ContentsMainTextDelegate?
    
    var cellLable: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    // 버튼
    let categoryButton: UIButton = {
        let button = UIButton()
        button.setTitle("Click!", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont(name: "Button", size: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // Cell을 생성하고 설정합니다.
    override init( style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.cellSetting()
       
        self.categoryButton.addTarget(self, action: #selector(categoryClicked), for: .touchUpInside)
        
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // Cell을 설정 합니다.
    func cellSetting() {
        self.labelSetting()
        
    }
    
    // Cell에 추가 할 Label을 설정합니다.
    func labelSetting() {
        contentView.addSubview(self.cellLable)
        contentView.addSubview(categoryButton)
        NSLayoutConstraint.activate([
            cellLable.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            cellLable.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            categoryButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            categoryButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        ])
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @objc func categoryClicked() {
            cellDelegate?.categoryButtonTapped()
        }

}
