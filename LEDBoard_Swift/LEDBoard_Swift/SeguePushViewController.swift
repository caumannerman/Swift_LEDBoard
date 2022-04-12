//
//  SeguePushViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2022/04/12.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    // 돌아가기 버튼을 누르면 Navigation에서 pop이 되도록 구현

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated:true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
