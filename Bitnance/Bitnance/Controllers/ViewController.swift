//
//  ViewController.swift
//  Bitnance
//
//  Created by João Guilherme on 10/01/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headerView: UIView = UIView()
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = UIColor(red: 0.01, green: 0.03, blue: 0.18, alpha: 1.00)
        
        
    
        let balanceLabel = UILabel()
        balanceLabel.text = "INVESTIDO"
        balanceLabel.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 0.70)
        balanceLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let balanceAmountLabel = UILabel()
        balanceAmountLabel.text = "R$00,00"
        balanceAmountLabel.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        balanceAmountLabel.font = .systemFont(ofSize: 42, weight: .semibold)
        balanceAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let profitLabel = UILabel()
        profitLabel.text = "LUCRO"
        profitLabel.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 0.70)
        profitLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        profitLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let profitAmount = UILabel()
        profitAmount.text = "R$00,00"
        profitAmount.textColor = UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00)
        profitAmount.font = .systemFont(ofSize: 18, weight: .semibold)
        profitAmount.translatesAutoresizingMaskIntoConstraints = false
        
        let btcLabel = UILabel()
        btcLabel.text = "BTC"
        btcLabel.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 0.70)
        btcLabel.font = .systemFont(ofSize: 18, weight: .semibold)
        btcLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let btcAmount = UILabel()
        btcAmount.text = "BTC 00,00"
        btcAmount.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        btcAmount.font = .systemFont(ofSize: 18, weight: .semibold)
        btcAmount.translatesAutoresizingMaskIntoConstraints = false
        
        let tableView: UITableView = UITableView(frame: CGRect.zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(headerView)
        
        headerView.addSubview(balanceLabel)
        headerView.addSubview(balanceAmountLabel)
        headerView.addSubview(profitLabel)
        headerView.addSubview(profitAmount)
        headerView.addSubview(btcLabel)
        headerView.addSubview(btcAmount)
        
        
        view.addSubview(tableView)
        
        
        headerView.topAnchor.constraint(equalTo: self.view.topAnchor,constant: 0).isActive = true
        headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 0).isActive = true
        headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor,constant: 0).isActive = true
        headerView.heightAnchor.constraint(equalToConstant: 315).isActive = true
        
       
        balanceLabel.topAnchor.constraint(equalTo: headerView.topAnchor,constant: 85).isActive = true
        balanceLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor,constant: 0).isActive = true
        
        balanceAmountLabel.topAnchor.constraint(equalTo: balanceLabel.bottomAnchor,constant: 10).isActive = true
        balanceAmountLabel.centerXAnchor.constraint(equalTo: headerView.centerXAnchor,constant: 0).isActive = true
        
        profitLabel.topAnchor.constraint(equalTo: balanceAmountLabel.topAnchor,constant: 56).isActive = true
        profitLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant: 46).isActive = true


        btcLabel.topAnchor.constraint(equalTo: balanceAmountLabel.topAnchor,constant: 56).isActive = true
        btcLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant: 46).isActive = true
        
        //btcLabel.leadingAnchor.constraint(equalTo: profitLabel.leadingAnchor,constant: 180).isActive = true
//
//        profitAmount.leadingAnchor.constraint(equalTo: textsViews.leadingAnchor,constant: 0).isActive = true
//        profitAmount.topAnchor.constraint(equalTo: profitAmount.bottomAnchor,constant: 10).isActive = true
//        profitAmount.bottomAnchor.constraint(equalTo: textsViews.bottomAnchor,constant: 0).isActive = true
//
//        btcAmount.trailingAnchor.constraint(equalTo: textsViews.trailingAnchor,constant: 0).isActive = true
//        btcAmount.bottomAnchor.constraint(equalTo: textsViews.bottomAnchor,constant: 0).isActive = true
//        btcAmount.topAnchor.constraint(equalTo: btcLabel.bottomAnchor,constant: 10).isActive = true
        
        
        
        
        
        tableView.topAnchor.constraint(equalTo: headerView.bottomAnchor,constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor,constant: 0).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,constant: 0).isActive = true
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    

    


}

