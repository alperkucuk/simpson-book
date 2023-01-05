//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Alper Talha Küçük on 12/27/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var simpsonArray = [Simpsons]()
    var chosenSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let homer = Simpsons(nameInit: "Homer Simpson", jobInit: "Nuclear Safety", imageInit: UIImage(named: "homer")!, roleInit: .father)
        let marge = Simpsons(nameInit: "Marge Simpson", jobInit: "Housewife", imageInit: UIImage(named: "marge")!, roleInit: .mother)
        let bart = Simpsons(nameInit: "Bart Simpson", jobInit: "Student", imageInit: UIImage(named: "bart")!, roleInit: .son)
        let lisa = Simpsons(nameInit: "Lisa Simpson", jobInit: "Student", imageInit: UIImage(named: "lisa")!, roleInit: .daughter)
        let maggie = Simpsons(nameInit: "Maggie Simpson", jobInit: "Baby", imageInit: UIImage(named: "maggie")!, roleInit: .baby)
        
        
        simpsonArray.append(homer)
        simpsonArray.append(marge)
        simpsonArray.append(bart)
        simpsonArray.append(lisa)
        simpsonArray.append(maggie)
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
            
        }
    }

}

