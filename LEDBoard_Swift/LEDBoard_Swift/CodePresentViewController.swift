//
//  CodePresentViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2022/04/12.
//

import UIKit


class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    //Delegate로 이전 화면에 데이터 전달
    //강한 순환 참조 메모리 누수 방지를 위해 weak
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
        }
    }

    @IBAction func tapBackButton(_ sender: UIButton) {
        
        self.delegate?.sendData(name: "Code로 Present에서 되돌려준 data")
        
        self.presentingViewController?.dismiss(animated: true)
    }
 
}
