//
//  ViewController.swift
//  ViewCodeTutorial
//
//  Created by Caio Roberto Aceti on 10/09/21.
//

import UIKit

class TutorialViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.view = TutorialView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

