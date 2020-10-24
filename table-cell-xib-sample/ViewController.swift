//
//  ViewController.swift
//  table-cell-xib-sample
//
//  Created by iMac on 24/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView : UITableView!
    let arrayFruit = ["A","B","C","D","E","F","G","H"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib.init(nibName: "simpleTableViewCell", bundle: nil), forCellReuseIdentifier: "simpleTableViewCell")

    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    //MARK: - table method

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayFruit.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:simpleTableViewCell? = tableView.dequeueReusableCell(withIdentifier:"simpleTableViewCell") as? simpleTableViewCell

        cell?.labelName.text = self.arrayFruit[indexPath.row]

        return cell!

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
     return 100.0
    }
}
