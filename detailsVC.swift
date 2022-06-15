//
//  detailsVC.swift
//  updatedPokedexApp
//
//  Created by Macbook Pro on 13.06.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var hpSlider: UISlider!
    @IBOutlet weak var attackSlider: UISlider!
    @IBOutlet weak var defenceSlider: UISlider!
    @IBOutlet weak var sAttackSlider: UISlider!
    @IBOutlet weak var speedSlider: UISlider!
    //Current Value Labels
    @IBOutlet weak var currentHpLabel: UILabel!
    @IBOutlet weak var currentAttackLabel: UILabel!
    @IBOutlet weak var currentDefenceLabel: UILabel!
    @IBOutlet weak var currentSAttackLabel: UILabel!
    @IBOutlet weak var currentSpeedLabel: UILabel!
    
    var selectedPokedex : Pokemon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedPokedex?.image
        nameLabel.text = selectedPokedex?.name
        hpSlider.value = selectedPokedex!.hp
        attackSlider.value = selectedPokedex!.attack
        defenceSlider.value = selectedPokedex!.defence
        sAttackSlider.value = selectedPokedex!.sAttack
        speedSlider.value = selectedPokedex!.speed
        //CurrentLabels
        currentHpLabel.text = "\(selectedPokedex?.hp ?? 0)"
        currentAttackLabel.text = "\(selectedPokedex?.attack ?? 0)"
        currentDefenceLabel.text = "\(selectedPokedex?.defence ?? 0)"
        currentSAttackLabel.text = "\(selectedPokedex?.sAttack ?? 0)"
        currentSpeedLabel.text = "\(selectedPokedex?.speed ?? 0)"
        //ThumbImageDefiniton
        hpSlider.setThumbImage(UIImage(named: "pokeball"), for: UIControl.State.normal)
        attackSlider.setThumbImage(UIImage(named: "pokeball"), for: UIControl.State.normal)
        defenceSlider.setThumbImage(UIImage(named: "pokeball"), for: UIControl.State.normal)
        sAttackSlider.setThumbImage(UIImage(named: "pokeball"), for: UIControl.State.normal)
        speedSlider.setThumbImage(UIImage(named: "pokeball"), for: UIControl.State.normal)
    }

}
