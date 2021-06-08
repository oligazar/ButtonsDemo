//
//  ButtonsDemoTests.swift
//  ButtonsDemoTests
//
//  Created by Alexander on 7/6/21.
//

import XCTest
@testable import ButtonsDemo

class ButtonsDemoTests: XCTestCase {

    func test_increaseButtonClick_IncreasesCounter() {
        let sut = makeSut()
        sut.loadViewIfNeeded()
        
        XCTAssertEqual(sut.counter, 0)
        sut.increaseButton.simulateTap()
        
        XCTAssertEqual(sut.counter, 1)
    }
    
    // MARK: Helpers
    
    func makeSut() -> ViewController {
        let bundle = Bundle(for: ViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        return vc
    }
}

extension UIButton {
    func simulateTap() {
        sendActions(for: .touchUpInside)
//        simulate(event: .touchUpInside)
    }
}

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach { action in
                let object = target as NSObject
                let selector = Selector(action)
                object.perform(selector)
            }
        }
    }
}
