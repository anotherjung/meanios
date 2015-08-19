//
//  ViewController.swift
//  ios15_meanstocket2
//
//  Created by Fomp on 8/15/15.
//  Copyright © 2015 Fomp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func leftBtnPressed(sender: UIButton) {
        socket.emit("javascript")
    }
    
    @IBAction func rightBtnPressed(sender: UIButton) {
        socket.emit("swift")
    }
    

    let socket = SocketIOClient(socketURL: "https://intense-temple-2782.herokuapp.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socket.connect()
        
        socket.on("connect") { data, ack in
            print("iOS::WE ARE USING SOCKETS!")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

