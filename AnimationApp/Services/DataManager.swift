//
//  DataManager.swift
//  AnimationApp
//
//  Created by Nikolai Maksimov on 26.06.2022.
//

import Spring


class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
