
import Foundation
import UIKit

extension MenuViewController {
    func createdImageView(for imageView:UIImageView, top: CGFloat, bottom: CGFloat,
                          leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                          equalToSecond: UIView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            imageView.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            imageView.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            imageView.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    func forScrollView(myScrollView: UIScrollView) {

 
    }

}
