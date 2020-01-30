//
//  ViewController.swift
//  Sound_play
//
//  Created by M29 on 25/12/19.
//  Copyright © 2019 M29. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
let soundarray = ["red","orange","yellow","green","indigo","blue","purple"]
    var player : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func okay(_ sender: UIButton) {
        playsound(sound: soundarray[sender.tag])
        
    }
    func playsound(sound: String)
    {
        let soundURL = Bundle.main.url(forResource: sound , withExtension: "wav")
        do
        {
            player = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        player.play()
    }
}

