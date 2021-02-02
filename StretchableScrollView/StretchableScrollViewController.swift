//
//  StretchableScrollViewController.swift
//  StretchableScrollView
//
//  Created by Urvi Koladiya on 19/01/21.
//

import UIKit

class StretchableScrollViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    }
}

extension StretchableScrollViewController: UIScrollViewDelegate {
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        let actualPosition = scrollView.panGestureRecognizer.translation(in: scrollView.superview)
        if ((actualPosition.y > 1 && actualPosition.y < 10) && (scrollView.contentOffset.y == 0)) {
            if scrollView.contentOffset.y == 0 {
                UIView.animate(withDuration: 0.7, animations: {
                    self.scrollView.contentInset.top = -self.scrollView.contentSize.height / 3.5
                })
            }
        } else if ((actualPosition.y > 10 && actualPosition.y < 20) && (scrollView.contentOffset.y == 0)) {
            if scrollView.contentOffset.y == 0 {
                UIView.animate(withDuration: 0.7, animations: {
                    self.scrollView.contentInset.top = -self.scrollView.contentSize.height / 2.5
                })
            }
        } else if ((actualPosition.y > 20 ) && (scrollView.contentOffset.y == 0)) {
            if scrollView.contentOffset.y == 0 {
                UIView.animate(withDuration: 0.7, animations: {
                    self.scrollView.contentInset.top = -self.scrollView.contentSize.height / 2
                })
            }
        }else
        {
            self.scrollView.contentInset.top = 0
        }
    }
}

