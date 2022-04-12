//
//  SettingViewController.swift
//  LEDBoard_Swift
//
//  Created by 양준식 on 2021/12/28.
//

import UIKit


protocol LEDBoardSettingDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

final class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowBtn: UIButton!
    @IBOutlet weak var purpleBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var blackBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
    
    weak var delegate: LEDBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor: UIColor = .black
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    //이전 화면에서 전달받은 항목들을 화면에 적용시켜주는 함수 ( state property로  데이터 바인딩이 되어있지 않기 때문에 일일 이 수정을 해줘야함
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgroundColorButton(color: self.backgroundColor)
        print(self.backgroundColor)
    }
    // 텍스트 색상 설정의 3가지 버튼 모두 이 Action 함수에 연결하였다.
    @IBAction func tapTextColorBtn(_ sender: UIButton) {
        if sender == self.yellowBtn{
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        }else if sender == self.purpleBtn{
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        }else if sender == self.greenBtn{
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    // 배경 색상 설정의 3가지 버튼 모두 이 Action 함수에 연결하였다.
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        
        if sender == self.blackBtn{
                self.changeBackgroundColorButton(color: .black)
                self.backgroundColor = .black
        } else if sender == self.blueBtn {
                self.changeBackgroundColorButton(color: .blue)
                self.backgroundColor = .blue
        } else if sender == self.orangeBtn {
                self.changeBackgroundColorButton(color: .orange)
                self.backgroundColor = .orange
        }
    }
    
    @IBAction func tapSaveBtn(_ sender: UIButton) {
        //위임받은 권한으로 이전 화면의 색상, text 변경 
        self.delegate?.changedSetting(
            //사용자가 입력한 텍스트를 넘겨줌 
            text: self.textField.text,
            textColor: self.textColor,
            backgroundColor: self.backgroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
   
    private func changeTextColor(color: UIColor){
        self.yellowBtn.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleBtn.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenBtn.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    private func changeBackgroundColorButton(color: UIColor){
        self.blackBtn.alpha = color == UIColor.black ? 1 : 0.2
        self.blueBtn.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeBtn.alpha = color == UIColor.orange ? 1 : 0.2
    }
    
}
