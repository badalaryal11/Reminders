//
//  Item.swift
//  Reminders
//
//  Created by Badal  Aryal on 25/02/2024.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    //inverse relationship of items
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
    // category is just a class and in order to make it type we have to say .self
    // property is the name of forward relationship
}
