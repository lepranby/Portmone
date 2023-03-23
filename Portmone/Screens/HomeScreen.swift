//  MainViewController.swift
//  Portmone
//
//  Created by Aleksej Shapran on 21.03.23

import UIKit

class HomeScreen: UIViewController {
    
    // MARK: Declaring controls
    
    let titleLabel = UILabel()
    let recentPaymentsLabel = UILabel()
    let mainScrollView = UIScrollView()
    
    let nameLabel = UILabel()
    let typeLabel = UILabel()
    let moneyLabel = UILabel()
    let numberLabel = UILabel()
    let holderLabel = UILabel()
    let validLabel = UILabel()
    let validDataLabel = UILabel()
    
    let card = UIView()
    
    let scroll = UIScrollView()
    let stack = UIStackView()
    
    let firstPayTitle = UILabel()
    let firstPayDesc = UILabel()
    let firstPrice = UILabel()
    
    let secondPayTitle = UILabel()
    let secondPayDesc = UILabel()
    let secondPrice = UILabel()
    
    let actionsLabel = UILabel()
    let transactionButton = UIButton()
    let myPaymentsButton = UIButton()
    
    let exchangeTitleLabel = UILabel()
    let exchangeLabel = UILabel()
    let exchangeFlorens = UILabel()
    
    let exchangeUSDCard = UIView()
    let exchangeFLOCard = UIView()
    let exchangeScroll = UIScrollView()
    
    var profileImage: UIImageView = {
        var profile = UIImage(named: "profile")
        var imagePerson = UIImageView(image: profile)
        return imagePerson
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        configureView()
        configureConstraints()
        configureLabels()
        configureCardView()
        configureScrollView()
        configureStackView()
        configurePaymentLabels()
        // configureButtons()
        configureProfileImage()
        configureUSDExchangeView()
        configureFLOExchangeView()
        configureMainScrollView()
    }
}
