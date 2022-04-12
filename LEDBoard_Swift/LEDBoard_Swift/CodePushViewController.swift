//
//  CodePushViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2022/04/12.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    //데이터를 되돌려주기 위해, 권한을 위임받음
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //name을 전달받았다면 표시 
        if let name = name {
            self.nameLabel.text = name
        }
    }
    
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "코드로 Push에서 돌려받은 Data")
        self.navigationController?.popViewController(animated: true)
    }
    
}
