//
//  ViewController.swift
//  Section1_TableViewAssignment
//
//  Created by Azamat Kenjebayev on 10/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let countries: [String] = ["USA", "Canada", "Kazakhstan", "Mexico", "China", "Australia", "Turkey", "United Kingdom", "Germany", "Poland", "Austria", "France", "Portugal", "Spain", "Norway", "Sweden", "Italy", "UAE", "Egypt", "Greece", "Finland", "New Zealand", "Vietnam", "Malaysia", "Singapore", "India", "Pakistan", "Thailand", "Brazil", "Argentina"]
    private let countriesPopulation: [String] = ["338.2M", "38.4M", "19.3M", "127.5M", "1.425B", "26.1M", "85.3M", "67.5M", "83.3M", "39.8M", "8.9M", "64.6M", "10.2M", "47.5M", "5.4M", "10.5M", "59M", "9.4M", "110.9M", "10.3M", "5.5M", "5.1M", "98.1M", "33.9M", "5.9M", "1.417B", "235.8M", "71.6M", "215.3M", "45.5M"]
    
    @IBOutlet var countryTableView: UITableView!
    
    private let cellIdentifier = "CellIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countryTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let country = countries[indexPath.row]
        let countryPopulation = countriesPopulation[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        configuration.text = country
        configuration.secondaryText = countryPopulation
        
        cell.contentConfiguration = configuration
        
        return cell
    }
    
}
