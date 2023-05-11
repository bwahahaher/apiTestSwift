//
//  LoginViewController.swift
//  apiTest
//
//  Created by UNIFORM on 05.05.2023.
//

import UIKit

class LoginViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var number: UITextField!
    @IBAction func loginButton(_ sender: UIButton) {
        print(UserSettings.userName)
        var num = number.text!
        apiLogin(number: num)
        print(num)
        
        
    }
   
    @IBOutlet weak var hello: UILabel!
    

   

}
func apiLogin(number: String){
    let json: [String: Any] = ["search": number]
    let jsonData = try? JSONSerialization.data(withJSONObject: json)
    var request = URLRequest(url: URL(string: "https://api.bm-app.com/search")!)
    request.httpMethod = "POST"
    request.allHTTPHeaderFields = ["BM-ApiKey": "a33e0b59-a707-4741-9d71-6a5e99da747d"]
    request.httpBody = jsonData
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
    print(String(decoding: data!, as: UTF8.self))
    }
    task.resume()
    UserSettings.login = number
}
