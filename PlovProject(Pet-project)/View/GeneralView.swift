import Foundation
import UIKit

// MARK: imageView
extension GeneralViewController {
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
    
}

// MARK: label
extension GeneralViewController {
    func createGeneralLabel(for label:UILabel, top: CGFloat, bottom: CGFloat,
                            leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                            equalToSecond: UIView) {
        
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            label.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            label.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            label.trailingAnchor.constraint(equalTo: equalToSecond.trailingAnchor, constant: trailing)
        ])
    }
    
    
    func customLabel(for label:UILabel, color: UIColor, font: UIFont) {
        label.font = font
        label.textColor = color
    }
}


// MARK: Buttom

extension GeneralViewController {
    func createButton(for button:UIButton, top: CGFloat, bottom: CGFloat,
                      leading: CGFloat, trailing: CGFloat,equalToFirst: UIView,
                      equalToSecond: UIView) {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: equalToFirst.topAnchor, constant: top),
            button.bottomAnchor.constraint(equalTo: equalToFirst.bottomAnchor, constant: bottom),
            button.leadingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: leading),
            button.trailingAnchor.constraint(equalTo: equalToSecond.leadingAnchor, constant: trailing)
        ])
    }
    
    func customButton(button:UIButton, background: UIColor, title: String?, radius: CGFloat?, alpha: CGFloat) {
        button.backgroundColor = background
        button.titleLabel?.text = title
        button.layer.cornerRadius = radius ?? 0
        
        button.alpha = alpha
    }
}
