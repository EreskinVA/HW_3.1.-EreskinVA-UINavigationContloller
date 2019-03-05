//
//  DetailVC.swift
//  HW_3.1.-EreskinVA-UINavigationContloller
//
//  Created by Vladimir Ereskin on 05/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var information: String?

    // MARK: - ... @IBOutlet
    
    @IBOutlet var informationLabel: UILabel!
    
    // MARK: - ... UIViewController Methods
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barTintColor = self.view.backgroundColor
        
        guard let information = information else { return }

        informationLabel.text = information
    }
    
}
