//
//  SecondViewController.swift
//  Localization
//
//  Created by Thekra Abuhaimed. on 09/03/1442 AH.
//

import UIKit

class SecondViewController: UIViewController {
    
    let lab: UILabel = {
           let lab = UILabel()
           lab.text = "Test".localiz()
           lab.textAlignment = .center
           lab.font = UIFont.systemFont(ofSize: 40, weight: .black)
           lab.textColor = .black
           lab.translatesAutoresizingMaskIntoConstraints = false
           return lab
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.4562498331, green: 0.5939264894, blue: 0.5734882355, alpha: 1)
        self.view.addSubview(lab)
        let safe = view.safeAreaLayoutGuide

        NSLayoutConstraint.activate([

            // MARK: - Welcome Label
           self.lab.topAnchor.constraint(equalTo: safe.topAnchor, constant: 130),
           self.lab.leadingAnchor.constraint(equalTo: safe.leadingAnchor),
           self.lab.trailingAnchor.constraint(equalTo: safe.trailingAnchor),
        ])
    }
}
