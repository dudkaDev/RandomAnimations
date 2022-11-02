//
//  Animation.swift
//  RandomAnimations
//
//  Created by Андрей Абакумов on 02.11.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "pop",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0.5...2),
            duration: Double.random(in: 0.5...2),
            delay: 0.2
        )
    }
}


