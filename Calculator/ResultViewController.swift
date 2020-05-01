//
//  ResultViewController.swift
//  Calculator
//
//  Created by AtsushiShimizu on 2020/05/01.
//  Copyright © 2020 ats432. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    var result = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.resultLabel.text = String(result)
        // Do any additional setup after loading the view.
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
