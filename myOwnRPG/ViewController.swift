//
//  ViewController.swift
//  myOwnRPG
//
//  Created by Sagar Arora  on 5/14/16.
//  Copyright © 2016 Sagar Arora . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PlayerAttackLbl: UILabel!
    @IBOutlet weak var PlayerAttackBtn: UIButton!
    @IBOutlet weak var EnemyAttackLbl: UILabel!
    @IBOutlet weak var EnemyBtn: UIButton!
    @IBOutlet weak var EnemyImg: UIImageView!
    @IBOutlet weak var PlayerImg: UIImageView!
    @IBOutlet weak var EnemyHpLbl: UILabel!
    @IBOutlet weak var PlayerHpLbl: UILabel!
    @IBOutlet weak var PlaceHolderLbl: UILabel!
    @IBOutlet weak var RestartBtn: UIButton!
    
    var Player: Character!
    var Enemy: Character!
   

    override func viewDidLoad() {
        super.viewDidLoad()
         Player = Character(attackPower: 40, hp: 100, name: "Kobe")
         Enemy = Character(attackPower: 55, hp: 100, name: "Kwame")
        PlaceHolderLbl.text =  "A wild \(Player.name) and \(Enemy.name) has appeared! ohh fuckk"
        PlayerHpLbl.text = "\(Player.hp) HP"
        EnemyHpLbl.text = "\(Enemy.hp) HP"
}
    
    func updateOnPlayer() {
        PlayerImg.hidden = false
        EnemyAttackLbl.hidden = false
        EnemyBtn.hidden = false
    
    }
    
    func updateOnEnemy() {
    EnemyImg.hidden = false
    PlayerAttackLbl.hidden = false
    PlayerAttackBtn.hidden = false
    }
    
    
    
    
    @IBAction func onEnemyBtnPressed(sender: AnyObject) {
        
        if Player.hp <= Enemy.attackPower {
            
            PlayerImg.hidden = true
            PlayerAttackBtn.hidden = true
            PlayerAttackLbl.hidden = true
            PlayerHpLbl.hidden = true
            
            PlaceHolderLbl.text = "Congrats you have just defeated \(Enemy.name) Would you like to restart?"
            PlayerHpLbl.text = "\(Player.hp) HP"
            RestartBtn.hidden = false
            
        } else {
       
        
        
        
            
            Player.AttemptAttackCharacter(Enemy.attackPower)
            PlaceHolderLbl.text = "Oh fuck the \(Player.name) just took a hit of \(Enemy.attackPower) HP"
                PlayerHpLbl.text = "\(Player.hp) HP"
            PlayerImg.hidden = true
            EnemyBtn.hidden = true
            EnemyAttackLbl.hidden = true
            
            NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ViewController.updateOnPlayer), userInfo: nil, repeats: false)
            
        }
        
        
         
            
          
            
       
            
            
    }
    
            
        
        
        

        


    
   
    @IBAction func onRestartBtnPressed(sender: AnyObject) {
        restartGame()
    }
    
    @IBAction func onPlayerBtnPressed(sender: AnyObject) {
        
        if Enemy.hp <= Player.attackPower {
     
            
            EnemyImg.hidden = true
            EnemyHpLbl.hidden = true
            EnemyAttackLbl.hidden = true
            EnemyBtn.hidden = true
            
            PlaceHolderLbl.text = "Congrats you have just defeated \(Enemy.name) Would you like to restart?"
            EnemyHpLbl.text = "\(Enemy.hp) HP"
            RestartBtn.hidden = false
    
        } else {
        
        
        
            
        Enemy.AttemptAttackCharacter(Player.attackPower)
        PlaceHolderLbl.text = "Oh fuck the \(Enemy.name) just took a hit of \(Player.attackPower) HP"
        EnemyHpLbl.text = "\(Enemy.hp) HP"
        EnemyImg.hidden = true
        PlayerAttackBtn.hidden = true
        PlayerAttackLbl.hidden = true
        
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ViewController.updateOnEnemy), userInfo: nil, repeats: false)
            
        }
        
    
   
    
        
            
            
            
            
           
           
    }
    
            
          
            
        
        
        


     func restartGame() {
    
    PlaceHolderLbl.text = "A wild \(Player.name) and \(Enemy.name) has appeared! ohh fuckk"
    Enemy = Character(attackPower: 55, hp: 100, name: "Kwame")
    EnemyHpLbl.text = "\(Enemy.hp) HP"
    Player = Character(attackPower: 45, hp: 100, name: "Kobe")
    PlayerHpLbl.text = "\(Player.hp) HP"
    EnemyImg.hidden = false
    EnemyHpLbl.hidden = false
    EnemyAttackLbl.hidden = false
    EnemyBtn.hidden = false
    PlayerImg.hidden = false
    PlayerAttackBtn.hidden = false
    PlayerAttackLbl.hidden = false
    EnemyHpLbl.hidden = false
    PlayerHpLbl.hidden = false
    RestartBtn.hidden = true
    
    
    
    }
   

  
}

