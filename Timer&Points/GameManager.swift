//
//  GameManager.swift
//  Timer&Points
//
//  Created by Kakouliadis on 11/12/2018.
//  Copyright © 2018 Kakouliadis. All rights reserved.
//

import Foundation

class GameManager: NSObject {
    // Singleton, global instance
    static let shared = GameManager()
    
    private var points: Int!
    
    override init() {
        points = 0
    }
    
    // MARK: - Methods
    func getPoints()->Int {
        return points
    }
    
    // MARK: - Actions
    func rightBin() {
        points = points + 1
    }
    
    func wrongBin() {
        points = points - 1
    }
    
    /*
     - Only Called when the ball is not re-thrawn.
     */
    func outsideBin() {
        points = points - 3
    }
}
