//
//  testVC.swift
//  together
//
//  Created by Seven Tsai on 2017/7/18.
//  Copyright © 2017年 Seven Tsai. All rights reserved.
//

import UIKit

class testVC: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {

//    let classList = ["美食","電影","運動","旅遊","其他"]
    
    let meals = ["445","456","789"]
//    var formatter: DateFormatter! = nil
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return meals.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                return meals[row]
       
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let myTextField = self.view.viewWithTag(100) as! UITextField
        
        myTextField.text = meals[row]
        
        
        print(meals[0])
        print(meals[1])
        print(meals[2])
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fullScreenSize = UIScreen.main.bounds.size
        
      
        
        
        // 建立一個 UITextField
        var myTextField = UITextField(frame: CGRect(
            x: 0, y: 0,
            width: fullScreenSize.width, height: 40))
        
        
        let myPickerView = UIPickerView()
        
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        
        
        
        myTextField.inputView = myPickerView
        
        myTextField.text = meals[0]
        
        myTextField.tag = 100
        
        
        
        
        myTextField.backgroundColor = UIColor.init(
            red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        myTextField.textAlignment = .center
        myTextField.center = CGPoint(
            x: fullScreenSize.width * 0.5,
            y: fullScreenSize.height * 0.15)
        
        
        self.view.addSubview(myTextField)
        
        print(meals[0])
        print(meals[1])
        print(meals[2])
        
        
//        
//        
//        
//        //見一個ＰＩＣＫＥＲＶＩＥＷ
//        let myPickerView = UIPickerView(frame: CGRect(
//            x: 0, y: fullScreenSize.height * 0.3,
//            width: fullScreenSize.width, height: 150))
//        //myViewController 實作為 classPickerVC
//        let myViewController = classPickerVC()
//        
//        
//        
//        self.addChildViewController(myViewController)
//        
//        
//        myPickerView.dataSource = myViewController
//        myPickerView.dataSource = myViewController
//        
//        self.view.addSubview(myPickerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
