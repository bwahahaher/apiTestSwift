//
//  UserInfoController.swift
//  apiTest
//
//  Created by UNIFORM on 10.05.2023.
//

import SwiftUI

class UserInfoController:  UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(UserSettings.login!)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var yourData: UILabel!
    @IBAction func showInfo(_ sender: UIButton) {
        

        let json: [String: Any] = ["search": UserSettings.login]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        var request = URLRequest(url: URL(string: "https://api.bm-app.com/search")!)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = ["BM-ApiKey": "a33e0b59-a707-4741-9d71-6a5e99da747d"]
        request.httpBody = jsonData
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
        let text = String(decoding: data!, as: UTF8.self)
            if let jsonData = text.data(using: .utf8) {
                do {
                    let decoder = JSONDecoder()
                    let response = try decoder.decode(Response.self, from: jsonData)
                    for searcher in response.searchers{
                        UserSettings.userName = searcher.customer.name
                        UserSettings.userSurname = searcher.customer.surname
                    }
                } catch {
                    print("Ошибка декодирования:", error)
                }
            
            }
            

        }
        task.resume()
        yourData.text!+=UserSettings.userName!
    }
    
}

