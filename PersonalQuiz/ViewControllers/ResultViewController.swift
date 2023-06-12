//
//  ResuktViewController.swift
//  PersonalQuiz
//
//  Created by Yuri Luka on 11/06/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var animalTypeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answersChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: true)
        getResult()
    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}
