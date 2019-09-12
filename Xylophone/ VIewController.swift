////
////  ViewController.swift
////  Xylophone
////
////  Created by Angela Yu on 27/01/2016.
////  Copyright © 2016 London App Brewery. All rights reserved.
////
//
//import UIKit
////import AVFoundation
//import AudioToolbox
//
//class ViewController: UIViewController{
//
////    var player: AVAudioPlayer?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//
//
//    @IBAction func notePressed(_ sender: UIButton) {
////        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
////
////        do {
////            player = try AVAudioPlayer(contentsOf: url)
////            guard let player = player else {return}
////
////            player.prepareToPlay()
////            player.play()
////        }catch let error as Error {
////            print(error.localizedDescription)
////        }
//
//        if let soundURL = Bundle.main.url(forResource: "note" + String(sender.tag), withExtension: "wav"){
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//            AudioServicesPlaySystemSound(mySound)
//        }
//    }
//
//
//
//}
//




//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
     
        playNote(sender.tag)
    }
    
    func playNote(_ note:Int){
        let soundUrl = Bundle.main.url(forResource: "note\(note)", withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
    
    
}

