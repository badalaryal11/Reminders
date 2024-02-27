//
//  AppDelegate.swift
//  Reminders
//
//  Created by Badal  Aryal on 15/02/2024.
//

import UIKit
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // to locate our Realm database
 
       // print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        
        
        
        do {
            _ = try Realm()
           
        } catch{
            print("Error in intialising new realm, \(error)")
        }
        return true
    }
    
   
    
    
    

    
    
   
   
}





