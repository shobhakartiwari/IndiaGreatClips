//
//  Saloon.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/17/23.
//
import Foundation

struct Salon : Decodable, Identifiable {
    var id: Int
    var name: String?
    var cost: Float?
    var address: String?
    var currentStatus: String?
    var openingTime: String?
    var distance: String?
    let imageURL: String
}

struct SalonResponse: Decodable {
    let request: [Salon]
}

struct MockData {
    static let salonOne = Salon(id:001, name: "Eola Commons", cost:10.99, address: "3150 N, Aurora, IL", currentStatus: "Opens soon", openingTime: "Opens 9AM", distance: "1.7 mi", imageURL: "salon1")
    static let salonTwo = Salon(id:002, name: "Eola Commons", cost:9.99, address: "3150 N, Aurora, IL", currentStatus: "Opens soon", openingTime: "Opens 9AM", distance: "1.7 mi", imageURL: "salon2")
    static let salonThree = Salon(id:003, name: "Eola Commons", cost:12.99, address: "3150 N, Aurora, IL", currentStatus: "Opens soon", openingTime: "Opens 9AM", distance: "1.7 mi", imageURL: "salon3")
    static let salonFour = Salon(id:004, name: "Eola Commons", cost:10.99, address: "3150 N, Aurora, IL", currentStatus: "Opens soon", openingTime: "Opens 9AM", distance: "1.7 mi", imageURL: "salon1")
    static let salonFive = Salon(id:005, name: "Eola Commons", cost:10.99, address: "3150 N, Aurora, IL", currentStatus: "Opens soon", openingTime: "Opens 9AM", distance: "1.7 mi", imageURL: "salon2")
    
    static let salonItems = [salonOne, salonTwo, salonThree, salonFour, salonFive]
}

