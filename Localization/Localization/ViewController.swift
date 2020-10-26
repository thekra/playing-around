//
//  ViewController.swift
//  Localization
//
//  Created by Thekra Abuhaimed. on 09/03/1442 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let lab: UILabel = {
           let lab = UILabel()
           lab.text = "Welcome".localiz()
           lab.textAlignment = .center
           lab.font = UIFont.systemFont(ofSize: 40, weight: .black)
           lab.textColor = .white
           lab.translatesAutoresizingMaskIntoConstraints = false
           return lab
       }()

        let lanButton: UIButton = {
           let button = UIButton()
           button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .black)
           button.setTitle("Change Language".localiz(), for: .normal)
           button.setTitleColor(.white, for: .normal)
           button.addTarget(self, action: #selector(changeLang), for: .touchUpInside)
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()
    
        let segueButton: UIButton = {
            let button = UIButton()
            button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .black)
            button.setTitle("Signin".localiz(), for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(secondV), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()

        let usernameLab: UILabel = {
           let lab = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 30))
           lab.text = "Username:".localiz()
           lab.textAlignment = .natural
           lab.font = UIFont.systemFont(ofSize: 20, weight: .black)
           lab.textColor = .white
           lab.translatesAutoresizingMaskIntoConstraints = false
           return lab
       }()

        let passwordLab: UILabel = {
           let lab = UILabel(frame: CGRect(x: 0, y: 0, width: 20, height: 30))
           lab.text = "Password:".localiz()
           lab.textAlignment = .natural
           lab.font = UIFont.systemFont(ofSize: 20, weight: .black)
           lab.textColor = .white
           lab.translatesAutoresizingMaskIntoConstraints = false
           return lab
       }()

        let userTextF: UITextField = {
           let text =  UITextField(frame: CGRect(x: 0, y: 0, width: 80, height: 20))
           text.font = UIFont.systemFont(ofSize: 15, weight: .black)
           text.borderStyle = .roundedRect
           text.placeholder = "Username".localiz()
           text.translatesAutoresizingMaskIntoConstraints = false
           return text
       }()

        let passwordTextF: UITextField = {
           let text = UITextField(frame: CGRect(x: 0, y: 0, width: 80, height: 30))
           text.font = UIFont.systemFont(ofSize: 15, weight: .black)
           text.borderStyle = .roundedRect
           text.placeholder = "Password".localiz()
           text.translatesAutoresizingMaskIntoConstraints = false
           return text
       }()

        let selectorStackView: UIStackView = {
           let stackView = UIStackView()
           stackView.axis = .vertical
           stackView.distribution = .fill
           stackView.alignment = .fill
           stackView.spacing = 20.0
           stackView.translatesAutoresizingMaskIntoConstraints = false
           return stackView
       }()

        let textFStackView: UIStackView = {
           let stackView = UIStackView()
           stackView.axis = .vertical
           stackView.distribution = .fill
           stackView.alignment = .fill
           stackView.spacing = 25.0
           stackView.translatesAutoresizingMaskIntoConstraints = false
           return stackView
       }()

        let StackView: UIStackView = {
           let stackView = UIStackView()
           stackView.axis = .horizontal
           stackView.distribution = .fillProportionally
           stackView.alignment = .fill
           stackView.spacing = 5.0
           stackView.translatesAutoresizingMaskIntoConstraints = false
           return stackView
       }()

        override func viewDidLoad() {
           super.viewDidLoad()
           self.view.backgroundColor = #colorLiteral(red: 0.4562498331, green: 0.5939264894, blue: 0.5734882355, alpha: 1)

            self.view.addSubview(selectorStackView)
           selectorStackView.addArrangedSubview(usernameLab)
           selectorStackView.addArrangedSubview(passwordLab)

            self.view.addSubview(textFStackView)
           textFStackView.addArrangedSubview(userTextF)
           textFStackView.addArrangedSubview(passwordTextF)

            self.view.addSubview(StackView)
           StackView.addArrangedSubview(selectorStackView)
           StackView.addArrangedSubview(textFStackView)

            self.view.addSubview(lab)
           self.view.addSubview(lanButton)
            self.view.addSubview(segueButton)
            
            let safe = view.safeAreaLayoutGuide

            NSLayoutConstraint.activate([
                
//                userTextF.topAnchor.constraint(equalTo: textFStackView.topAnchor),
//                passwordTextF.topAnchor.constraint(equalTo: userTextF.bottomAnchor),
//
//                userTextF.leadingAnchor.constraint(equalTo: textFStackView.leadingAnchor),
//                passwordTextF.leadingAnchor.constraint(equalTo: textFStackView.leadingAnchor),
//
//                userTextF.trailingAnchor.constraint(equalTo: textFStackView.trailingAnchor),
//                passwordTextF.trailingAnchor.constraint(equalTo: textFStackView.trailingAnchor),
//
//                usernameLab.topAnchor.constraint(equalTo: selectorStackView.topAnchor),
//                passwordLab.topAnchor.constraint(equalTo: usernameLab.bottomAnchor),
//
//                usernameLab.leadingAnchor.constraint(equalTo: selectorStackView.leadingAnchor),
//                passwordLab.leadingAnchor.constraint(equalTo: selectorStackView.leadingAnchor),
//
//                usernameLab.trailingAnchor.constraint(equalTo: selectorStackView.trailingAnchor),
//                passwordLab.trailingAnchor.constraint(equalTo: selectorStackView.trailingAnchor),
                // MARK: - StackView Constraints
               StackView.topAnchor.constraint(equalTo: lab.bottomAnchor, constant: 150),
               StackView.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 10),
               StackView.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: 10),

                // MARK: - Change Language Button
               self.lanButton.topAnchor.constraint(equalTo: safe.topAnchor),
               self.lanButton.leadingAnchor.constraint(equalTo: safe.leadingAnchor, constant: 20),

                // MARK: - Signin Button
               self.segueButton.topAnchor.constraint(equalTo: StackView.bottomAnchor, constant: 50),
                self.segueButton.leadingAnchor.constraint(equalTo: StackView.leadingAnchor),
                self.segueButton.trailingAnchor.constraint(equalTo: StackView.trailingAnchor),
                // MARK: - Welcome Label
               self.lab.topAnchor.constraint(equalTo: safe.topAnchor, constant: 130),
               self.lab.leadingAnchor.constraint(equalTo: safe.leadingAnchor),
               self.lab.trailingAnchor.constraint(equalTo: safe.trailingAnchor),

                // MARK: - User TextField
               self.userTextF.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -40),
               self.userTextF.topAnchor.constraint(equalTo: self.lab.bottomAnchor, constant: 150),

                // MARK: - Password TextField
               self.passwordTextF.trailingAnchor.constraint(equalTo: safe.trailingAnchor, constant: -40),
               self.passwordTextF.topAnchor.constraint(equalTo: self.userTextF.bottomAnchor, constant: 15),
           ])
           print(LanguageManager.shared.currentLanguage)
       }

    @objc func secondV() {
        let vc = SecondViewController()
        self.present(vc, animated: true, completion: nil)
    }


    @objc func changeLang() {
        let alert = UIAlertController(title: "Change Language".localiz(),
                                      message: nil,
                                      preferredStyle: .actionSheet)
        
        
        var title = ""
        var setLanguage: Languages!
        if LanguageManager.shared.currentLanguage == .en {
            title = "العربية"
            setLanguage = .ar
        } else if LanguageManager.shared.currentLanguage == .ar {
             title = "English"
            setLanguage = .en
         }
        
        let lan = UIAlertAction(title: title, style: .default, handler: { (action) -> Void in
            LanguageManager.shared.setLanguage(language: setLanguage,
                                                  viewControllerFactory: { title -> UIViewController in
                                                      
    
                 // the view controller that you want to show after changing the language
                 return ViewController()
               }) { view in
                  view.transform = CGAffineTransform(scaleX: 1, y: 1)
                  view.alpha = 0
               }
        })
        
        let cancel = UIAlertAction(title: "Cancel".localiz(), style: .cancel, handler: { (action) -> Void in })
        alert.addAction(lan)
        alert.addAction(cancel)

        present(alert, animated: true, completion: nil)
    }
}

