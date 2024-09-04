//
//  StartView.swift
//  Everyday Tools
//
//  Created by Viktor Ogay on 04/09/24.
//

import UIKit

class StartView: UIView {
    
    //MARK: IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var agreementTextLabel: UILabel!
    @IBOutlet weak var noteTextLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    //MARK: Vars
    let buttonColor = UIColor(red: 36 / 255.0, green: 177 / 255.0, blue: 255 / 255.0, alpha: 0.5)
    
    //MARK: Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpUi()
    }
    
    
    //MARK: Functions
    func setUpUi() {
        titleLabel.font = UIFont.monospacedSystemFont(ofSize: 40, weight: .light)
        titleLabel.textColor = .black
        
        textLabel.font = UIFont.monospacedSystemFont(ofSize: 30, weight: .light)
        textLabel.textColor = .black
        
        agreementTextLabel.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .light)
        agreementTextLabel.textColor = .black
        
        noteTextLabel.font = UIFont.monospacedSystemFont(ofSize: 15, weight: .light)
        noteTextLabel.textColor = .black
        
        startButton.setTitle("start", for: .normal)
        startButton.titleLabel?.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .regular)
        startButton.setTitleColor(.black, for: .normal)
        startButton.layer.cornerRadius = 4
        startButton.backgroundColor = buttonColor
    }
}
