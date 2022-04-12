//
//  SeguePushViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2022/04/12.
//

import UIKit

class SeguePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // segueWay가 실행되기 전, prepare에서 전달한 데이터가 name에 들어갔다면 표시
        if let name = self.name {
            self.nameLabel.text = name
        }
       
    }
    
    // 돌아가기 버튼을 누르면 Navigation에서 pop이 되도록 구현

    @IBAction func tapBackButton(_ sender: UIButton) {
        delegate?.sendData(name: "SegueWay Push에서 돌려받은 Data")
        self.navigationController?.popViewController(animated:true)
    }
    

}
