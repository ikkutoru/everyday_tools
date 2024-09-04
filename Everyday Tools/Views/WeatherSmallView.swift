//
//  WeatherSmallView.swift
//  Everyday Tools
//
//  Created by Viktor Ogay on 04/09/24.
//

import UIKit

class WeatherSmallView: UIView {

    override init(frame: CGRect) {
            super.init(frame: frame)
            setupView()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupView()
        }
    
    private func setupView() {
            backgroundColor = .lightGray

            let label = UILabel()
            label.text = "Small View"
            label.translatesAutoresizingMaskIntoConstraints = false
            addSubview(label)
            
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: centerXAnchor),
                label.centerYAnchor.constraint(equalTo: centerYAnchor)
            ])
        }

}
