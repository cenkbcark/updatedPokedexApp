//
//  ViewController.swift
//  updatedPokedexApp
//
//  Created by Macbook Pro on 13.06.2022.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var myPokedex = [Pokemon]()
    var chosenPokedex : Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //Pokemon Object
        let pikachu = Pokemon(pNAme: "Pikachu", pHP: 3, pAttack: 4, pDefence: 3, pSAttack: 3, pSpeed: 6, pImage: UIImage(named: "pikachu")!)
        let charmender = Pokemon(pNAme: "Charmender", pHP: 3, pAttack: 4, pDefence: 3, pSAttack: 4, pSpeed: 4, pImage: UIImage(named: "charmender")!)
        let squirtle = Pokemon(pNAme: "Squirtle", pHP: 3, pAttack: 3, pDefence: 4, pSAttack: 3, pSpeed: 3, pImage: UIImage(named: "squirtle")!)
        let psyduck = Pokemon(pNAme: "Psyduck", pHP: 3, pAttack: 4, pDefence: 3, pSAttack: 4, pSpeed: 4, pImage: UIImage(named: "psyduck")!)
        let gyarados = Pokemon(pNAme: "Gyarados", pHP: 6, pAttack: 8, pDefence: 5, pSAttack: 4, pSpeed: 5, pImage: UIImage(named: "gyarados")!)
        let jigglypuff = Pokemon(pNAme: "Jigglypuff", pHP: 7, pAttack: 3, pDefence: 2, pSAttack: 3, pSpeed: 2, pImage: UIImage(named: "jigglypuff")!)
        let abra = Pokemon(pNAme: "Abra", pHP: 2, pAttack: 2, pDefence: 1, pSAttack: 7, pSpeed: 6, pImage: UIImage(named: "abra")!)
        let machop = Pokemon(pNAme: "Machop", pHP: 5, pAttack: 5, pDefence: 3, pSAttack: 3, pSpeed: 3, pImage: UIImage(named: "machop")!)
        let bulbasaur = Pokemon(pNAme: "Bulbasaur", pHP: 3, pAttack: 3, pDefence: 3, pSAttack: 4, pSpeed: 3, pImage: UIImage(named: "balbasaur")!)
        let butterfree = Pokemon(pNAme: "Butterfree", pHP: 4, pAttack: 3, pDefence: 3, pSAttack: 6, pSpeed: 5, pImage: UIImage(named: "buterfree")!)
        let caterpie = Pokemon(pNAme: "Caterpie", pHP: 3, pAttack: 2, pDefence: 3, pSAttack: 2, pSpeed: 3, pImage: UIImage(named: "caterpie")!)
        let pidgeot = Pokemon(pNAme: "Pidgeot", pHP: 5, pAttack: 5, pDefence: 5, pSAttack: 5, pSpeed: 6, pImage: UIImage(named: "pidgeot")!)
        let sandshrew = Pokemon(pNAme: "Sandshrew", pHP: 3, pAttack: 5, pDefence: 5, pSAttack: 2, pSpeed: 3, pImage: UIImage(named: "sandshrew")!)
        let clefairy = Pokemon(pNAme: "Clefairy", pHP: 5, pAttack: 3, pDefence: 3, pSAttack: 4, pSpeed: 3, pImage: UIImage(named: "clefairy")!)
        let poliwag = Pokemon(pNAme: "Poliwag", pHP: 3, pAttack: 3, pDefence: 3, pSAttack: 3, pSpeed: 6, pImage: UIImage(named: "poliwag")!)
        let onix = Pokemon(pNAme: "Onix", pHP: 3, pAttack: 3, pDefence: 10, pSAttack: 2, pSpeed: 5, pImage: UIImage(named: "onix")!)
        let hitmonlee = Pokemon(pNAme: "Hitmonlee", pHP: 3, pAttack: 8, pDefence: 4, pSAttack: 3, pSpeed: 6, pImage: UIImage(named: "hitmonlee")!)
        let staryu = Pokemon(pNAme: "Staryu", pHP: 2, pAttack: 3, pDefence: 4, pSAttack: 5, pSpeed: 5, pImage: UIImage(named: "staryu")!)
        
        myPokedex.append(pikachu)
        myPokedex.append(charmender)
        myPokedex.append(squirtle)
        myPokedex.append(psyduck)
        myPokedex.append(gyarados)
        myPokedex.append(jigglypuff)
        myPokedex.append(abra)
        myPokedex.append(machop)
        myPokedex.append(bulbasaur)
        myPokedex.append(butterfree)
        myPokedex.append(caterpie)
        myPokedex.append(pidgeot)
        myPokedex.append(sandshrew)
        myPokedex.append(poliwag)
        myPokedex.append(clefairy)
        myPokedex.append(onix)
        myPokedex.append(hitmonlee)
        myPokedex.append(staryu)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myPokedex.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PokedexCollectionViewCell
        cell.pNameLabel.text = myPokedex[indexPath.row].name
        cell.iconView.image = myPokedex[indexPath.row].image
        cell.layer.cornerRadius = 25.0
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        chosenPokedex = myPokedex[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedPokedex = chosenPokedex
        }
    }
    


}

