//
//  AppDelegate.swift
//  Reminders
//
//  Created by Badal  Aryal on 15/02/2024.
//

import UIKit
import CoreData
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // to locate our Realm database
 
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        
        let data = Data()
        data.name = "Badal"
        data.age = 25
        
        
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(data)
            }
        } catch{
            print("Error in intialising new realm, \(error)")
        }
        return true
    }
    
   
    
    
    

    
    
    func applicationWillTerminate(_ application: UIApplication)  {
        self.saveContext()
        print("applicationWillTerminate")
    }
        //CoreData Stack
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}





