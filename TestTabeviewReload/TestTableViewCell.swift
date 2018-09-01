//
//  TestTableViewCell.swift
//  TestTabeviewReload
//
//  Created by 廖源迪 on 2018/8/24.
//  Copyright © 2018年 yuandiLiao. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    deinit {
        print("tag值",self.tag)
        print(self)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
