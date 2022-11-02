//
//  DataManager.swift
//  RandomAnimations
//
//  Created by Андрей Абакумов on 02.11.2022.
//

import SpringAnimation

class DataManager {
    static let shared = DataManager()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
