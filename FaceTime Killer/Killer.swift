//
//  Killer.swift
//  FaceTime Killer
//
//  Created by Adam Simpson on 12/7/16.
//  Copyright © 2016 Adam Simpson. All rights reserved.
//

import Foundation

class Killer {
    func killFacetime() {
        NSAppleScript(source: "do shell script \"sudo killall VDCAssistant && sudo killall coreaudiod \" with administrator " +
            "privileges")!.executeAndReturnError(nil)
    }
}
