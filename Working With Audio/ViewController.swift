//
//  ViewController.swift
//  Working With Audio
//
//  Created by George Gogarten on 6/20/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
        
    }
    
    
    @IBAction func stop(sender: AnyObject) {
        
        player.pause()
        
        let audioPath = NSBundle.mainBundle().pathForResource("backInTheDay", ofType: ".mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            
            
        } catch {
            
            print("error")
            
        }

        
    }
    
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
        
        
    }
    
    
    @IBAction func adjustVolume(sender: AnyObject) {
    
    player.volume = slider.value
    
    
    }
    
    
    
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = NSBundle.mainBundle().pathForResource("backInTheDay", ofType: ".mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            
            
        } catch {
            
            print("error")
            
        }

      
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

