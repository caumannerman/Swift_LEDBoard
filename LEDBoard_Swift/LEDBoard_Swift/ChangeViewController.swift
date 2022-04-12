//
//  ChangeViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2022/04/12.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class ChangeViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        //storyboard에 있는 viewController를 instantiate
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        //데이터 넘겨주기
        viewController.name = "Yang"
        // 여기서 권한을 넘겨주는 것!
        viewController.delegate = self
        //navigation에 전달
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else {return }
        //present 방식 설정
        viewController.modalPresentationStyle = .fullScreen
        //data 넘겨주기
        viewController.name = "Yang~"
        // 여기서 권한을 넘겨주는 것!
        viewController.delegate = self
        self.present(viewController, animated: true)
    }
    
    //delegate 메서드 구현
    func sendData(name: String) {
        self.nameLabel.text = name
    }
    
    // segueway를 실행하기 직전에, prepare가 자동으로 호출됨 .
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //두가지의 SegueWay 관련 viewController 분기!!!
        
        if let viewController = segue.destination as? SeguePushViewController {
            viewController.name = "segue로 데이터 전달"
            //권한 위임!!!!
            viewController.delegate = self
        }
        
        else if let viewController = segue.destination as? SeguePresentViewController {
            viewController.name = "segueWay로 Present에 데이터 전달"
            viewController.delegate = self
        }
    }
}
