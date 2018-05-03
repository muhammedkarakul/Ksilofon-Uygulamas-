//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController{
    
    let sounds = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        // Butonun tag numarasini alir
        let tag = (sender.tag - 1)
        
        // ses dosyasinin uzantisini alir
        let url = Bundle.main.url(forResource: sounds[tag], withExtension: "wav")!
        
        // Bu kisim ses dosyalarini calar
        do{
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
  

}

