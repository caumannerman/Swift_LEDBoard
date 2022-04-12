//
//  ChangeViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2022/04/12.
//

import UIKit

class ChangeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        //storyboard에 있는 viewController를 instantiate
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
        //navigation에 전달
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
