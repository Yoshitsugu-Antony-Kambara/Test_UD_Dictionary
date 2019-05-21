//
//  ViewController.swift
//  Test_UD_Dictionary
//
//  Created by 神原良継 on 2019/05/21.
//  Copyright © 2019 YoshitsuguKambara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userDefaults = UserDefaults.standard
    
    var dic: Dictionary = ["2019/05/18": "1001"]

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //button01をタップするとdictionaryにデータが以下のように追加される
    @IBAction func button01(_ sender: Any) {
        dic["2019/05/19"] = "1002"
        dic["2019/05/20"] = "1003"
        dic["2019/05/21"] = "1004"
        
        userDefaults.set(dic, forKey: "ratio")
    }
    
    
    @IBAction func buttonGet(_ sender: Any) {
        var getData = userDefaults.dictionary(forKey: "ratio")
        //label.text = dic["2019/05/20"]
        
        let hoge = getData?["2019/05/20"]
        label.text = hoge as? String
    }
}

