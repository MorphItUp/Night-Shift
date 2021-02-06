//
//  CardPresentationController.swift
//  NightShift
//
//  Created by Mohamed El Gedawy on 1/31/21.
//

import UIKit

class CardPresentationController: UIPresentationController {
    
    // MARK: - Properties
    
    private lazy var blurView = UIVisualEffectView(effect: nil)
    
    // MARK: - Overrides
    
    override var shouldRemovePresentersView: Bool {
        return false
    }
    
    override func presentationTransitionWillBegin() {
        let container = containerView!
        blurView.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(blurView)
        blurView.edges(to: container)
        blurView.alpha = 0.0
        
        presentingViewController.beginAppearanceTransition(false, animated: false)
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { (ctx) in
            self.blurView.effect = UIBlurEffect(style: .light)
            self.blurView.alpha = 1
        }, completion: { (ctx) in })
    }
    
    override func presentationTransitionDidEnd(_ completed: Bool) {
        presentingViewController.endAppearanceTransition()
    }
    
    override func dismissalTransitionWillBegin() {
        presentingViewController.beginAppearanceTransition(true, animated: true)
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { (ctx) in
            self.blurView.alpha = 0.0
        }, completion: nil)
    }
    
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        presentingViewController.endAppearanceTransition()
        if completed {
            blurView.removeFromSuperview()
        }
    }
    
    
}
