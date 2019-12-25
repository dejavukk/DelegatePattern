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
    
    // 텍스트필드의 편집을 시작할 때 호출
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        
        print("텍스트 필드의 편집이 시작된다.")
        return true
    }
    
    // 텍스트 필드의 편집이 시작된 후 호출
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("텍스트 편집 시작")
    }
    
    // 텍스트 필드의 내용이 삭제될 때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        
        print("텍스트 필드 내용 삭제")
        
        return true // false를 리턴하면 삭제되지 않는다.
    }
    
    // 텍스트 필드의 내용이 변경될 때 호출
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("내용이 \(string)으로 변경된다.")
        
        if Int(string) == nil {     // 입력된 값이 숫자가 아니라면 true
            // 현재 텍스트 필드에 입력된 길이와 더해질 문자열 길이의 합이 10을 넘는다면 반영하지 않는다.
            if (textField.text?.count)! + string.count > 10 {
                return false
            } else {
                return true
            }
        } else {                    // 입력된 값이 숫자라면 false
            
            return false
        }
        
        
        // return true // false를 리턴하면 변경되지 않는다.
    }
    
    // 텍스트 필드의 리턴키가 눌러졌을 때 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("리턴키가 눌러졌다.")
        
        return true
    }
    
    // 텍스트 필드 편집이 종료될 때 호출
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
        print("편집 종료")
        
        return true // false를 리턴하면 편집이 종료되지 않는다.
    }
    
    // 텍스트 필드의 편집이 종료되었을 때 호출
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        print("내용의 편집이 종료")
    }
    
    
    
    


}

