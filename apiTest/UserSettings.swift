//
//  UserDefaults.swift
//  apiTest
//
//  Created by UNIFORM on 10.05.2023.
//

import Foundation

final class UserSettings{
    private enum SettingsKeys: String {
        case login
        case userName
        case userSurname
        case userPatronymic
        case userNumber
        case userBirthday
        case userBonus
        case userLevel
        case userProcent
    }
    static var login: String! {
        get {
             return UserDefaults.standard.string(forKey: SettingsKeys.login.rawValue)
         }
         set {
             let defaults = UserDefaults.standard
             let key = SettingsKeys.login.rawValue
             if let login = newValue{
                 print("value: \(login) was added to \(key)")
                 defaults.set(login, forKey: key)
             } else {
                 defaults.removeObject(forKey: key)
             }
         }
     }
    static var userLevel: String! {
        get {
             return UserDefaults.standard.string(forKey: SettingsKeys.userLevel.rawValue)
         }
         set {
             let defaults = UserDefaults.standard
             let key = SettingsKeys.userLevel.rawValue
             if let userLevel = newValue{
                 print("value: \(userLevel) was added to \(key)")
                 defaults.set(userLevel, forKey: key)
             } else {
                 defaults.removeObject(forKey: key)
             }
         }
     }
    static var userProcent: String! {
        get {
             return UserDefaults.standard.string(forKey: SettingsKeys.userProcent.rawValue)
         }
         set {
             let defaults = UserDefaults.standard
             let key = SettingsKeys.userProcent.rawValue
             if let userProcent = newValue{
                 print("value: \(userProcent) was added to \(key)")
                 defaults.set(userProcent, forKey: key)
             } else {
                 defaults.removeObject(forKey: key)
             }
         }
     }
    static var userBirthday: String! {
       get {
            return UserDefaults.standard.string(forKey: SettingsKeys.userBirthday.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.userBirthday.rawValue
            if let userBirthday = newValue{
                print("value: \(userBirthday) was added to \(key)")
                defaults.set(userBirthday, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    static var userBonus: String! {
        get {
             return UserDefaults.standard.string(forKey: SettingsKeys.userBonus.rawValue)
         }
         set {
             let defaults = UserDefaults.standard
             let key = SettingsKeys.userBonus.rawValue
             if let userBonus = newValue{
                 print("value: \(userBonus) was added to \(key)")
                 defaults.set(userBonus, forKey: key)
             } else {
                 defaults.removeObject(forKey: key)
             }
         }
     }
    static var userName: String! {
        get {
             return UserDefaults.standard.string(forKey: SettingsKeys.userName.rawValue)
         }
         set {
             let defaults = UserDefaults.standard
             let key = SettingsKeys.userName.rawValue
             if let name = newValue{
                 print("value: \(name) was added to \(key)")
                 defaults.set(name, forKey: key)
             } else {
                 defaults.removeObject(forKey: key)
             }
         }
     }
    static var userSurname: String! {
       get {
            return UserDefaults.standard.string(forKey: SettingsKeys.userSurname.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.userSurname.rawValue
            if let userSurname = newValue{
                print("value: \(userSurname) was added to \(key)")
                defaults.set(userSurname, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    static var userPatronymic: String! {
       get {
            return UserDefaults.standard.string(forKey: SettingsKeys.userPatronymic.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.userPatronymic.rawValue
            if let userPatronymic = newValue{
                print("value: \(userPatronymic) was added to \(key)")
                defaults.set(userPatronymic, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
    static var userNumber: String! {
       get {
            return UserDefaults.standard.string(forKey: SettingsKeys.userNumber.rawValue)
        }
        set {
            let defaults = UserDefaults.standard
            let key = SettingsKeys.userNumber.rawValue
            if let userNumber = newValue{
                print("value: \(userNumber) was added to \(key)")
                defaults.set(userNumber, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
        }
    }
}
