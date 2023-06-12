//
//  Extention + UIVew.swift
//  PersonalQuiz
//
//  Created by Yuri Luka on 12/06/2023.
//

import Foundation

// MARK: - Extentions ResultViewController
extension ResultViewController {
    func getResult() {
        var frequencyOfAnimals: [Animal: Int] = [:]
        let animals = answersChosen.map { $0.animal }
    
        for animal in animals {
            frequencyOfAnimals[animal, default: 0] += 1
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: Animal) {
        animalTypeLabel.text = "Вы - \(animal.rawValue)!"
        descriptionLabel.text = animal.definition
    }
}
