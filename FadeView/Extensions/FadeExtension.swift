//
//  FadeExtension.swift
//  FadeView
//
//  Created by Gerald on 02/12/2017.
//  Copyright © 2017 Gerald. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func fadeIn(_ duration: TimeInterval = 2.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: [.repeat,.autoreverse], animations: {
            self.alpha = 1.0
        }, completion: completion)  }
    
    func fadeOut(_ duration: TimeInterval = 2.0, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options:[.repeat,.autoreverse], animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
}
