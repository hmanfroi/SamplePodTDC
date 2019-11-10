//
//  PresentationViewController.swift
//  SamplePodTDCBlue
//
//  Created by Henrique Manfroi da Silveira on 10/11/19.
//  Copyright © 2019 Henrique Manfroi da Silveira. All rights reserved.
//

import UIKit

// MARK: - Class

public class PresentationViewController: UIViewController {
    
    // MARK: Internal variables
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var authorsStack: UIStackView = {
        let stack = UIStackView()
        return stack
    }()
    
    let viewModel: PresentationViewModel
    
    // MARK: Initializers
    
    public init(viewModel: PresentationViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Overriden methods
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        
        self.titleLabel.text = viewModel.title()
        
        for author in viewModel.authors() {
            self.authorsStack.addArrangedSubview(authorsLabel(text: author))
        }
    }
    
    public override func loadView() {
        super.loadView()
        self.setupTitleLabel()
        self.setupAuthors()
    }
    
    // MARK: Private methods
    
    private func setupTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
    }
    
    private func setupAuthors() {
        authorsStack.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(authorsStack)
        
        authorsStack.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 40).isActive = true
        authorsStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        authorsStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
    }
    
    private func authorsLabel(text: String) -> UILabel{
        let label = UILabel()
        label.textColor = UIColor.white
        label.text = text
        return label
    }
}
