//
//  Project1Tests.swift
//  Project1Tests
//
//  Created by Zac Cripps on 2/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import XCTest
@testable import Milestone1
/**
 Usually I would not seperate testing every element as it is not needed but due to the video content presented for our assignment I have done so
 */
class Project1Tests: XCTestCase {
    ///Potato class is made an optional to reduce the risk of the compiler running into a fatal error
     var potato: Potato?
    override func setUp() {

        /// Put setup code here. This method is called before the invocation of each test method in the class.
        potato = Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato")
    }

    override func tearDown() {
        /// Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    ///functions used to test the struct and the values that are given to the variables displayed on screen
    ///the struct test is broken down into individual test functions for each element on the phone and in the class
    func testPotatoName(){
        let potatoName = "Kipfler"

        XCTAssert(potato?.name == potatoName)
    }
    func testPotatoWeight(){
        let potatoWeight = "20grams"

        XCTAssert(potato?.weight == potatoWeight)
    }
    func testPotatoScienceName(){
        let potatoScienceName = "Solanum tuberosum"

        XCTAssertEqual(potato?.scienceName,potatoScienceName)
    }
    func testPotatoNutrition(){
        let potatoNutrition = "manganese, potassium and vitamin C"

        XCTAssertEqual(potato?.nutrition,potatoNutrition)
    }
    func testFamily(){
        let potatoFamily = "Sweet Potato"

        XCTAssertEqual(potato?.family,potatoFamily)
    }

    func testArray(){
        ///created array for potato class to test
        let potato: [Potato] = [Potato(name:"Kipfler", family:"Sweet Potato", weight:"20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C", image: "potato")]
        ///testing if array has anything inisde it and if the array is type string
        XCTAssert((potato as Any)is [Potato])
        ///testing if array is not eqaul to nil which would throw a fatal error if it was
        XCTAssertNotNil(potato)
    }
    

}
