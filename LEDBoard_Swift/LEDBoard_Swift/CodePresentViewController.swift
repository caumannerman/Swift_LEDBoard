//
//  CodePresentViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2022/04/12.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
 
}
