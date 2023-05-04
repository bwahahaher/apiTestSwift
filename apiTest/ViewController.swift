//
//  ViewController.swift
//  apiTest
//
//  Created by UNIFORM on 27.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var regNumber: UITextField!
    @IBOutlet weak var regName: UITextField!
    @IBOutlet weak var regSurname: UITextField!
    @IBOutlet weak var regPatronymic: UITextField!
    @IBOutlet weak var regEmail: UITextField!
    @IBOutlet weak var regBday: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func buttonClick(_ sender: UIButton) {
        let number = regNumber.text!
        let name = regName.text!
        let surname = regSurname.text!
        let patronymic = regPatronymic.text!
        let email = regEmail.text!
        let male = true
        let date = regBday.date
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "yyyy-MM-dd"
        let bDay = dateFormater.string(from: date)
        apiRegister(number: number, name: name, surname: surname, patronymic: patronymic, email: email, bday: bDay, male: male)
    }
    func apiRegister(number: String, name : String, surname: String, patronymic: String, email: String, bday: String, male: Bool){
        
        

        let json: [String: Any] = ["customer":[
                                        "login": number,
                                        "name": name,
                                        "surname": surname,
                                        "patronymic": patronymic,
                                        "fio": "Круглов Вася Васильевич",
                                        "male": true,
                                        "bDate": bday,
                                        "email": email
                                        ],
                                   "numberVerified": false,
                                   "smsVerificationCode": "8500",
                                   "counterparty": [
                                        "externalId": "uuid",
                                        "externalCode": "123",
                                        "name": "Vasa",
                                        "type": "individual"
                                  ]
                            ]
        print(json)
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        print(jsonData)
        var request = URLRequest(url: URL(string: "https://api.bm-app.com/registerCustomer")!)
        request.httpMethod = "POST"
        request.allHTTPHeaderFields = ["BM-ApiKey": "a33e0b59-a707-4741-9d71-6a5e99da747d"]
        request.httpBody = jsonData
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
        print(String(decoding: data!, as: UTF8.self))
        }
        task.resume()
    }
    


}
