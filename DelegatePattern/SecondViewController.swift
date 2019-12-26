//
//  SecondViewController.swift
//  DelegatePattern
//
//  Created by JunHyuk on 2019/12/25.
//  Copyright © 2019 junhyuk. All rights reserved.
//

import UIKit

// 이미지 피커 델리게이트패턴 구현

class SecondViewController: UIViewController {
    
    // 이미지뷰 프로퍼티 선언.
    @IBOutlet var imgView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 이미지 선택 메소드 기능 구현.
    @IBAction func pickImage(_ sender: Any) {
        
        // 이미지 피커 컨트롤러 인스턴스 생성
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary   // 이미지 소스로 사진 라이브러리 선택
        picker.allowsEditing = true // 이미지 편집 기능 On
        
        // 델리게이트 지정
        picker.delegate = self
        
        // 이미지 피커 컨트롤러 실행
        self.present(picker, animated: false)
        
    }
    
}

// 델리게이트 메소드 구현
extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        // 이미지 피커 컨트롤러 창 닫기
        picker.dismiss(animated: false)
        
        // 알림창 호출
        let alert = UIAlertController(title: "", message: "이미지 선택이 취소되었습니다.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "확인", style: .cancel))
        self.present(alert, animated: false)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        // 이미지 피커 컨트롤러 창 닫기
        picker.dismiss(animated: false) { () in
            
            // 이미지를 이미지 뷰에 표시
            let img = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            self.imgView.image = img
        }
        
    }
    
    
}
