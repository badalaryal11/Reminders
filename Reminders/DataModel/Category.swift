//
//  Category.swift
//  Reminders
//
//  Created by Badal  Aryal on 25/02/2024.
//

import Foundation

import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    // forward relationship
    let items = List<Item>() // empty list of items
    
}
