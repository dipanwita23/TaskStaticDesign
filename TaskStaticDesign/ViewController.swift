//
//  ViewController.swift
//  TaskStaticDesign
//
//  Created by Dipanwita Bardhan on 13/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var whiteBackGroundVw: UIView!
    @IBOutlet weak var tableView: UITableView!
    var dataSource = TableViewDataSource()
    var check = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.reloadData()
        RoundEdge(myView: self.whiteBackGroundVw) 
    }
    

}
extension ViewController: UITableViewDelegate ,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableVwCell") as! TableVwCell
        cell.position = indexPath.row
        cell.frequencyLabel.text = dataSource.frequency[indexPath.row]
        cell.nameLabel.text = dataSource.name[indexPath.row]
        cell.percentageLabel.text = dataSource.percentage[indexPath.row]
        cell.backgroundVw.backgroundColor = dataSource.colors[indexPath.row]
        cell.selectUnselectImageView.image = self.dataSource.unselectImages[indexPath.row]
        
        cell.backgroundVw.layer.cornerRadius = 15
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TableVwCell
        cell.selectUnselectImageView.image = self.dataSource.selectImages[indexPath.row]
        let vController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUpViewController") as? PopUpViewController
        self.navigationController!.present(vController!, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! TableVwCell
        cell.selectUnselectImageView.image = self.dataSource.unselectImages[indexPath.row]
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
