//
//  ViewController.swift
//  KeepTruckingAssignment
//
//  Created by 13216146 on 22/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cityListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchClicked(_ sender: Any) {
    }
    
}

private extension ViewController {
    
    func setupView() {
        cityListTable.translatesAutoresizingMaskIntoConstraints = false
        cityListTable.dataSource = self
    }
    func addHirarchy() {
        view.addSubview(cityListTable)
    }
    
    func setupConstraint() {
        
    }
    func registerCell() {
        cityListTable.register(UITableViewCell.self, forCellReuseIdentifier: "citiNameCell")
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "citiNameCell")!
        return cell
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        true
    }
}
