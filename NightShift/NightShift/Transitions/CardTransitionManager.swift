//
//  CardTransitionManager.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 12/10/20.
//

import UIKit

enum CardTransitionType {
    case presentation
    case dismissal
}

class CardTransitionManager: NSObject {
    
    var transitionDuration: Double = 0.8
    var transition: CardTransitionType = .presentation
    var shrinkDuration: Double = 0.2
    
    lazy var blurEffectView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .light)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        return visualEffectView
    }()
    
    lazy var dimmingView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    lazy var whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    // MARK: - Helper Methods
    private func addBackgroundViews(to containerView: UIView) {
        blurEffectView.frame = containerView.frame
        blurEffectView.alpha = 0.0
        containerView.addSubview(blurEffectView)
        
        dimmingView.frame = containerView.frame
        dimmingView.alpha = 0.0
        containerView.addSubview(dimmingView)
    }
    
}

// MARK: - UIViewController Animated Transitioning
extension CardTransitionManager: UIViewControllerAnimatedTransitioning {
    // duration of transition and animation
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return transitionDuration
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        let containerView = transitionContext.containerView
        containerView.subviews.forEach({ $0.removeFromSuperview() })
        addBackgroundViews(to: containerView)
        
        
        
        transitionContext.completeTransition(true)
    }
    
    
}

// MARK: - UIViewController Animated Transitioning Delegate

extension CardTransitionManager: UIViewControllerTransitioningDelegate {
    // wether the view controller is presented or dismissed
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition = .presentation
        return self
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition = .dismissal
        return self
    }
    
    
}
