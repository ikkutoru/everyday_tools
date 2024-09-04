//
//  StartViewController.swift
//  Everyday Tools
//
//  Created by Viktor Ogay on 04/09/24.
//

import UIKit

class StartViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var startView: StartView!
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: IBActions
    @IBAction func startButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "main")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    

}
