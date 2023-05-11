//
//  model.swift
//  apiTest
//
//  Created by UNIFORM on 10.05.2023.
//

import Foundation
struct Response: Codable {
    let searchers: [Searcher]
}


// Структура для хранения данных из JSON
struct Searcher: Codable {
    let customer: Customer

    let markParameters: MarkParameters
     
    struct Customer: Codable {
        let login: String?
        let name: String?
        let surname: String?
        let patronymic: String?
        let fio: String?
        let male: Bool?
        let bDate: String?
       
    }
     
    
     
    struct MarkParameters: Codable {
        let mark: Int?
        let markLvl: Int?

         
      
         
        struct CompanyLoyaltyParameters: Codable {

            
        }
    }
}
 
// Пример декодирования JSON

 

