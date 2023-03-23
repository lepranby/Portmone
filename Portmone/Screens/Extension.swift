//  Extension.swift
//  Portmone
//
//  Created by Aleksej Shapran on 21.03.23

import UIKit
import SnapKit
import Foundation

extension HomeScreen {
    
    func configureMainScrollView () {
        
        let _: () = mainScrollView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        let _: () = mainScrollView.widthAnchor.constraint(equalToConstant: 360).isActive = true
        
        mainScrollView.showsVerticalScrollIndicator = false
        
    }
    
    func configureCardView () {
        
        let _: () = card.heightAnchor.constraint(equalToConstant: 200).isActive = true
        let _: () = card.widthAnchor.constraint(equalToConstant: 362).isActive = true
        
        card.layer.cornerRadius = 15
        card.layer.borderWidth = 1
        card.layer.borderColor = CGColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 0.3)
        card.backgroundColor = .systemTeal.withAlphaComponent(0.4)
    }
    
    func configureScrollView () {
        
        let _: () = scroll.heightAnchor.constraint(equalToConstant: 100).isActive = true
        let _: () = scroll.widthAnchor.constraint(equalToConstant: 355).isActive = true
        
        scroll.showsVerticalScrollIndicator = false
        
    }
    
    func configureStackView () {
        
        let _: () = stack.heightAnchor.constraint(equalToConstant: 100).isActive = true
        let _: () = stack.widthAnchor.constraint(equalToConstant: 355).isActive = true
        
    }
    
    func configureProfileImage () {
        
        profileImage.heightAnchor.constraint(equalToConstant: 46).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 46).isActive = true
        
    }
    
    func configurePaymentLabels () {
        
        firstPayTitle.text = "Tavern '7 cats'"
        firstPayTitle.font = .systemFont(ofSize: 18, weight: .regular)
        
        firstPayDesc.text = "Luna steel sword HERDA, Damage 266-301"
        firstPayDesc.font = .systemFont(ofSize: 13, weight: .light)
        
        firstPrice.text = "₡ -504,12"
        firstPrice.textColor = .systemRed
        firstPrice.font = .systemFont(ofSize: 14, weight: .light)
        
        secondPayTitle.text = "Larvik Inn"
        secondPayTitle.font = .systemFont(ofSize: 18, weight: .regular)
        
        secondPayDesc.text = "Bounty for killing nakers"
        secondPayDesc.font = .systemFont(ofSize: 13, weight: .light)
        
        secondPrice.text = "₡ +62"
        secondPrice.textColor = .systemGreen
        secondPrice.font = .systemFont(ofSize: 14, weight: .light)
        
    }
    
    func configureLabels () {
        
        titleLabel.text = "Wallet"
        titleLabel.font = .systemFont(ofSize: 35, weight: .bold)
        
        nameLabel.text = "VIVALDI'S BANK NOVIGRAD"
        nameLabel.font = .systemFont(ofSize: 19, weight: .light)
        
        typeLabel.text = "Debit card"
        typeLabel.font = .systemFont(ofSize: 15, weight: .light)
        
        moneyLabel.text = "₡ 3 519,71"
        moneyLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        
        holderLabel.text = "OLGIERD VON EVEREC"
        holderLabel.font = .systemFont(ofSize: 19, weight: .light)
        
        numberLabel.text = "**** **** **** **** 7401"
        numberLabel.font = .systemFont(ofSize: 39, weight: .ultraLight)
        
        validLabel.text = "VALID"
        validLabel.font = .systemFont(ofSize: 14, weight: .light)
        
        validDataLabel.text = "06/73"
        validDataLabel.font = .systemFont(ofSize: 14, weight: .light)
        
        recentPaymentsLabel.text = "Recent payments"
        recentPaymentsLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        
        exchangeTitleLabel.text = "Exchange rates"
        exchangeTitleLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        
        exchangeLabel.text = "Buy $1 = ₡ 0,254 & Sell $1 = ₡ 0,292"
        exchangeLabel.font = .systemFont(ofSize: 18, weight: .light)
        
        exchangeFlorens.text = "Buy Ƒ1 = ₡ 0,993 & Sell Ƒ1 = ₡ 1,002"
        exchangeFlorens.font = .systemFont(ofSize: 18, weight: .light)
    }

    
    func configureUSDExchangeView () {
        
        let _: () = exchangeUSDCard.heightAnchor.constraint(equalToConstant: 56).isActive = true
        let _: () = exchangeUSDCard.widthAnchor.constraint(equalToConstant: 362).isActive = true
        
        exchangeUSDCard.layer.cornerRadius = 15
        exchangeUSDCard.backgroundColor = .systemTeal.withAlphaComponent(0.4)
        exchangeUSDCard.layer.borderWidth = 1
        exchangeUSDCard.layer.borderColor = CGColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 0.3)
        
    }
    
    func configureFLOExchangeView () {
        
        let _: () = exchangeFLOCard.heightAnchor.constraint(equalToConstant: 56).isActive = true
        let _: () = exchangeFLOCard.widthAnchor.constraint(equalToConstant: 362).isActive = true
        
        exchangeFLOCard.layer.cornerRadius = 15
        exchangeFLOCard.backgroundColor = .systemTeal.withAlphaComponent(0.4)
        exchangeFLOCard.layer.borderWidth = 1
        exchangeFLOCard.layer.borderColor = CGColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 0.3)
        
    }
    
    func configureView () {
        
        view.addSubview(titleLabel)
        view.addSubview(profileImage)
        
        view.addSubview(mainScrollView)
        
        mainScrollView.addSubview(recentPaymentsLabel)
        mainScrollView.addSubview(card)
            card.addSubview(nameLabel)
            card.addSubview(typeLabel)
            card.addSubview(moneyLabel)
            card.addSubview(numberLabel)
            card.addSubview(holderLabel)
            card.addSubview(validLabel)
            card.addSubview(validDataLabel)
        mainScrollView.addSubview(scroll)
            scroll.addSubview(stack)
            scroll.addSubview(firstPayTitle)
            scroll.addSubview(firstPayDesc)
            scroll.addSubview(firstPrice)
            scroll.addSubview(secondPayTitle)
            scroll.addSubview(secondPayDesc)
            scroll.addSubview(secondPrice)
        mainScrollView.addSubview(exchangeTitleLabel)
        
        mainScrollView.addSubview(exchangeUSDCard)
        exchangeUSDCard.addSubview(exchangeLabel)
        mainScrollView.addSubview(exchangeFLOCard)
        exchangeFLOCard.addSubview(exchangeFlorens)

    }
    
    func configureConstraints () {
        
        mainScrollView.snp.makeConstraints { make in
            make.top.equalTo(view).inset(115)
            make.left.right.bottom.equalTo(view)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view).inset(65)
            make.left.right.equalTo(view).inset(20)
        }
        
        profileImage.snp.makeConstraints { make in
            make.top.equalTo(view).inset(60)
            make.right.equalTo(view).inset(20)
        }
        
        card.snp.makeConstraints { make in
            make.top.equalTo(mainScrollView).inset(5)
            make.left.right.equalTo(mainScrollView).inset(15)
        }

        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(card).inset(20)
            make.left.equalTo(card).inset(15)
        }
        
        typeLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel).inset(25)
            make.left.equalTo(card).inset(15)
        }
        
        moneyLabel.snp.makeConstraints { make in
            make.top.equalTo(typeLabel).inset(35)
            make.left.right.equalTo(card).inset(15)
        }
        
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel).inset(100)
            make.left.equalTo(card).inset(15)
        }
        
        holderLabel.snp.makeConstraints { make in
            make.top.equalTo(numberLabel).inset(42)
            make.left.equalTo(card).inset(15)
        }
        
        validLabel.snp.makeConstraints { make in
            make.top.equalTo(card).inset(23)
            make.right.equalTo(card).inset(20)
        }
        
        validDataLabel.snp.makeConstraints { make in
            make.top.equalTo(validLabel).inset(24)
            make.right.equalTo(card).inset(20)
        }
        
        recentPaymentsLabel.snp.makeConstraints { make in
            make.top.equalTo(card).inset(212)
            make.left.equalTo(view).inset(20)
        }
        
        scroll.snp.makeConstraints { make in
            make.top.equalTo(recentPaymentsLabel).inset(25)
            make.left.right.equalTo(view).inset(18)
        }
        
        stack.snp.makeConstraints { make in
            make.edges.equalTo(scroll).inset(1)
        }
        
        firstPayTitle.snp.makeConstraints { make in
            make.top.equalTo(scroll).inset(15)
            make.left.right.equalTo(scroll).inset(3)
        }
        
        firstPayDesc.snp.makeConstraints { make in
            make.top.equalTo(firstPayTitle).inset(20)
            make.left.right.equalTo(scroll).inset(3)
        }
        
        firstPrice.snp.makeConstraints { make in
            make.top.equalTo(scroll).inset(15)
            make.right.equalTo(scroll).inset(8)
        }
        
        secondPayTitle.snp.makeConstraints { make in
            make.top.equalTo(firstPayDesc).inset(30)
            make.left.right.equalTo(scroll).inset(3)
        }
        
        secondPayDesc.snp.makeConstraints { make in
            make.top.equalTo(secondPayTitle).inset(20)
            make.left.right.equalTo(scroll).inset(3)
        }
        
        secondPrice.snp.makeConstraints { make in
            make.top.equalTo(scroll).inset(68)
            make.right.equalTo(scroll).inset(8)
        }
        
        exchangeTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(scroll).inset(115)
            make.left.equalTo(view).inset(20)
        }
        
        exchangeUSDCard.snp.makeConstraints { make in
            make.top.equalTo(exchangeTitleLabel).inset(40)
            make.left.right.equalTo(view).inset(15)
        }
        
        exchangeLabel.snp.makeConstraints { make in
            make.top.equalTo(exchangeUSDCard).inset(17)
            make.left.equalTo(exchangeUSDCard).inset(40)
        }
        
        exchangeFLOCard.snp.makeConstraints { make in
            make.top.equalTo(exchangeUSDCard).inset(66)
            make.left.right.equalTo(view).inset(15)
        }
        
        exchangeFlorens.snp.makeConstraints { make in
            make.top.equalTo(exchangeFLOCard).inset(17)
            make.left.equalTo(exchangeFLOCard).inset(40)
        }
    }
    
}
