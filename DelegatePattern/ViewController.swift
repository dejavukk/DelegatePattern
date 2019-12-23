//
//  ViewController.swift
//  DelegatePattern
//
//  Created by JunHyuk on 2019/12/22.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var mainTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 안내 메시지
        self.mainTextField.placeholder = "값을 입력."
        // 키보드 타입 영문자 패드
        self.mainTextField.keyboardType = UIKeyboardType.alphabet
        // 키보드 스타일 어둡게
        self.mainTextField.keyboardAppearance = UIKeyboardAppearance.dark
        // 리턴키 타입은 "Join"
        self.mainTextField.returnKeyType = UIReturnKeyType.join
        // 리턴키 자동 활성화 "On"
        self.mainTextField.enablesReturnKeyAutomatically = true
        
        // MARK: - 스타일 설정
        
        // 테두리 스타일 - 직선
        self.mainTextField.borderStyle = UITextField.BorderStyle.line
        // 배경 색상
        self.mainTextField.backgroundColor = UIColor(white: 0.87, alpha: 1.0)
        // 수직 방향으로 텍스트가 가운데 정렬
        self.mainTextField.contentVerticalAlignment = .center
        // 수평 방향으로 텍스트가 가운데 정렬되도록
        self.mainTextField.contentHorizontalAlignment = .center
        // 테두리 색상을 회색으로
        self.mainTextField.layer.borderColor = UIColor.darkGray.cgColor
        // 테두리 두께 설정
        self.mainTextField.layer.borderWidth = 2.0
        
        // 텍스트 필드를 최초 응답자로 설정
        self.mainTextField.becomeFirstResponder()
        
        self.mainTextField.delegate = self
        
    }
    
    @IBAction func confirm(_ sender: Any) {
        
        // 텍스트 필드를 최초 응답자 객체에서 해제
        self.mainTextField.resignFirstResponder()
    }
    
    
    @IBAction func input(_ sender: Any) {
        
        // 텍스트 필드를 최초 응답자 객체로 지정
        self.mainTextField.becomeFirstResponder()
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        
        
        
        
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
    }
    
    


}

