//
//  ViewController.swift
//  Section1_TableViewAssignment
//
//  Created by Azamat Kenjebayev on 10/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let countries:[String] = ["China",
                                      "India",
                                      "United States",
                                      "Indonesia",
                                      "Pakistan",
                                      "Nigeria",
                                      "Brazil",
                                      "Bangladesh",
                                      "Russia",
                                      "Mexico",
                                      "Japan",
                                      "Ethiopia",
                                      "Philippines",
                                      "Egypt",
                                      "DR Congo",
                                      "Vietnam",
                                      "Iran",
                                      "Turkey",
                                      "Germany",
                                      "Thailand",
                                      "United Kingdom",
                                      "Tanzania",
                                      "France",
                                      "South Africa",
                                      "Italy",
                                      "England",
                                      "Myanmar",
                                      "Kenya",
                                      "Colombia",
                                      "South Korea"]
    private let countriesPopulation:[String] = ["1425887.3370",
                                                "1417173.1730",
                                                "338289.8570",
                                                "275501.3390",
                                                "235824.8620",
                                                "218541.2120",
                                                "215313.4980",
                                                "171186.3720",
                                                "144713.3140",
                                                "127504.1250",
                                                "123951.6920",
                                                "123379.9240",
                                                "115559.0090",
                                                "110990.1030",
                                                "99010.2120",
                                                "98186.8560",
                                                "88550.5700",
                                                "85341.2410",
                                                "83369.8430",
                                                "71697.0300",
                                                "67508.9360",
                                                "65497.7480",
                                                "64626.6280",
                                                "59893.8850",
                                                "59037.4740",
                                                "57367.8110",
                                                "54179.3060",
                                                "54027.4870",
                                                "51874.0240",
                                                "51815.8100"]
    
    private var cellIdentifier = "CellIdentifier"
    
    @IBOutlet var countriesTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countriesTable.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
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
        
        let countries = countries[indexPath.row]
        let countriesPopulation = countriesPopulation[indexPath.row]
        
        var configuration = cell.defaultContentConfiguration()
        configuration.text = countries
        configuration.secondaryText = countriesPopulation
        cell.contentConfiguration = configuration
        
        return cell
    }
}

