//
//  AppDelegate.swift
//  StatusBarAppExample
//
//  Created by raymond on 2021/1/21.
//

import Cocoa
import Carbon

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSMenuDelegate {

    var statusItem: NSStatusItem?
    @IBOutlet weak var menu: NSMenu!
    @IBOutlet weak var firstMenuItem: NSMenuItem!
    
    override func awakeFromNib() {
        
       super.awakeFromNib()
       print("awakeFromNib")
       statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
       statusItem?.button?.title = "StatusBarAppExample"
            
       let itemImage = NSImage(named: "SplitScreen")
       itemImage?.isTemplate = true
       statusItem?.button?.image = itemImage
       if let menu = menu {
          statusItem?.menu = menu
       }
        
        if let item = firstMenuItem {
            let cView = CustomItemView.init(frame: NSRect.init(x: 0, y: 0, width:  menu.size.width, height: 200))
            item.view = cView
        }
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        print("applicationDidFinishLaunching")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

