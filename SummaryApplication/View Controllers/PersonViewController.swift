//
//  PersonViewController.swift
//  SummaryApplication
//
//  Created by Dmitry Shcherbakov on 24.10.2020.
//

import UIKit

class PersonViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var yearsOldLable: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    @IBOutlet var signOfZodiacLabel: UILabel!
    @IBOutlet var favouriteColourLabel: UILabel!
    @IBOutlet var favoriteActorLabel: UILabel!
    @IBOutlet var favoriteActressLabel: UILabel!
    @IBOutlet var favoriteMovieLabel: UILabel!
    @IBOutlet var favoriteMusicGroupLabel: UILabel!
    @IBOutlet var futureProfessionLabel: UILabel!
    @IBOutlet var favoriteСonsoleLabel: UILabel!
    @IBOutlet var pagerLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
    }
    
    
    private func setupLabels() {
        let person = Person.getPerson()
        
        fullNameLabel.text = person.fullName
        yearsOldLable.text = String(person.yearsOld)
        hobbiesLabel.text = person.hobbies.joined(separator: ", ")
        signOfZodiacLabel.text = person.signOfZodiac
        favouriteColourLabel.text = person.favouriteColour
        favoriteActorLabel.text = person.favoriteActor
        favoriteActressLabel.text = person.favoriteActress
        favoriteMovieLabel.text = person.favoriteMovie
        favoriteMusicGroupLabel.text = person.favoriteMusicGroup
        futureProfessionLabel.text = person.futureProfession
        favoriteСonsoleLabel.text = person.favoriteСonsole
        pagerLabel.text = person.pager
        emailLabel.text = person.email
    }
}
