//
//  Extension + Animation.swift
//  SuperAnimation
//
//  Created by Vladimir Stepanchikov on 20.09.2020.
//

import Spring

extension Animation {
    
    static func getAnimation() -> Animation {
        
        let randomPresent = Spring.AnimationPreset.allCases.randomElement() ??
            Spring.AnimationPreset.wobble
        let randomCurve = Spring.AnimationCurve.allCases.randomElement() ??
            Spring.AnimationCurve.easeIn
        
        let randomForce = CGFloat.random(in: 1...3)
        let randomDuration = CGFloat.random(in: 0.5...2.5)
        let randomRotate = CGFloat.random(in: 1...3)
        
        let animation = Animation(preset: randomPresent,
                                  curve: randomCurve,
                                  force: randomForce,
                                  duration: randomDuration,
                                  rotate: randomRotate)
        return animation
        
    }
    
}
