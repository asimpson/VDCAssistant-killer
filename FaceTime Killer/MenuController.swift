//
//  MenuController.swift
//  FaceTime Killer
//
//  Created by Adam Simpson on 12/7/16.
//  Copyright © 2016 Adam Simpson. All rights reserved.
//

import Cocoa
let killer = Killer()

class MenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
    @IBAction func killClicked(_ sender: NSMenuItem) {
        killer.killFacetime()
    }
    
    override func awakeFromNib() {
        statusItem.title = "📷"
        statusItem.menu = statusMenu
    }
}
