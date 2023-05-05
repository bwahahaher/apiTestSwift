//
//  LoginViewController.swift
//  apiTest
//
//  Created by UNIFORM on 05.05.2023.
//

import UIKit
struct KeysDefaults {
    static let keyName = "name"
    
}
class LoginViewController: UIViewController {
    var name = "Name"
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var number: UITextField!
    @IBAction func loginButton(_ sender: UIButton) {
    }
    @IBAction func testButton(_ sender: UIButton) {
        hello.text!+=name
    }
    @IBOutlet weak var hello: UILabel!
    

    func apiLogin(number: String){
        let json: [String: Any] = ["search": number]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        var request = URLRequest(url: URL(string: "https://api.bm-app.com/Search")!)
        request.httpMethod = "POST"
        name="Vlad"
        request.allHTTPHeaderFields = ["BM-ApiKey": "a33e0b59-a707-4741-9d71-6a5e99da747d"]
        request.httpBody = jsonData
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
        print(String(decoding: data!, as: UTF8.self))
        }
        task.resume()
    }
    func saveData(){
        let name = "Vlad"
        defaults.set(name, forKey: KeysDefaults.keyName)
    }

}
