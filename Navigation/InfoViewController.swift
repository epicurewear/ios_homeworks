//
//  InfoViewController.swift
//  Navigation
//
//  Created by Максим Золотухин on 22.05.2023.
//

import UIKit

class InfoViewController: UIViewController {

    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Внимание!", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBrown
        view.addSubview(actionButton)

        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            actionButton.leadingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.leadingAnchor,
                constant: 20.0
            ),
            actionButton.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -20.0
            ),
            actionButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            actionButton.heightAnchor.constraint(equalToConstant: 44.0)
        ])

        actionButton.addTarget(self, action: #selector(alertButtonActions(_:)), for: .touchUpInside)


    }

    @objc func alertButtonActions(_ sender: UIButton) {

        let firstAction = UIAlertAction(title: "ОК", style: .default) {_ in
            print("Нажат ОК!")
        }
        let secondAction = UIAlertAction(title: "Отмена", style: .cancel) {_ in
            print("Нажата Отмена")
        }

        let alertController = UIAlertController()
        alertController.title = "Внимание!"
        alertController.message = "Выберите действие..."
        alertController.addAction(firstAction)
        alertController.addAction(secondAction)

        present(alertController, animated: true)
    }

}
