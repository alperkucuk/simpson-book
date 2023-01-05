//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Alper Talha Küçük on 12/28/22.
//

import UIKit

class DetailsVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedSimpson?.image
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
    }
    


}
