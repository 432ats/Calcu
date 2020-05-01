//
//  ViewController.swift
//  Calculator
//
//  Created by AtsushiShimizu on 2020/05/01.
//  Copyright © 2020 ats432. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapCalculate(_ sender: Any) {
        // 計算ボタンをタップされたときに呼ばれます。ここに計算処理を書いていきましょう。

        if self.firstTextField.text?.count == 0 {
            showAlert(title:"Error", message:"上のテキストボックスに数字を入れてください")
            print("returnしました")
            return
        }
        if self.secondTextField.text?.count == 0 {
            showAlert(title:"Error", message:"下のテキストボックスに数字を入れてください")
            print("returnしました")
            return
        }
        
        let first = Int(self.firstTextField.text ?? "")!
        let second = Int(self.secondTextField.text ?? "")!
        

        var result = 0
        
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            // 足し算
            result = first + second
            break
        case 1:
            // 引き算
            result = first - second
            break
        case 2:
            // 掛け算
            result = first * second
            break
        case 3:
            // 割り算
            result = first / second
            break
        default:
            break
        }
        
        print(result)
        
        resultLabel.text = String(result)
        
        self.performSegue(withIdentifier: "ResultSegue", sender: result)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultSegue" {
            let next = segue.destination as? ResultViewController
            let result = sender as! Int
            next?.result = result
        }
    }
    
    
    func showAlert(title:String, message:String) {
        // ここでアラートを表示する処理を書いていく。
        // アラートを定義する
        let alert:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // アラートのアクションを定義する
        let action:UIAlertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        // アラートにアクションを追加する
        alert.addAction(action)
        
        // アラートの表示する
        present(alert, animated: true, completion: nil)
    }
    
}

