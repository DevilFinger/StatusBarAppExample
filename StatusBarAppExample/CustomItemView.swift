//
//  CustomItemView.swift
//  StatusBarAppExample
//
//  Created by raymond on 2021/1/21.
//

import Foundation
import Cocoa

class CustomItemView: NSView {
    
    var lable:NSTextField = NSTextField()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame frameRect: NSRect) {
        
        super.init(frame: frameRect)
        
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.blue.cgColor
        
        let midX = frameRect.midX
        let midY = frameRect.midY
        
        let wid:CGFloat = 100.0
        let hei:CGFloat = 20.0
        
        lable = NSTextField.init(frame: NSRect.init(x: midX - wid / 2.0, y: midY - hei / 2.0, width: wid, height: hei))
        lable.stringValue = currentTime()
        lable.isEditable = false
        lable.isSelectable = false
        lable.isAccessibilityMain()
        lable.font = NSFont.systemFont(ofSize: 14)
        lable.textColor = NSColor.red
        lable.alignment = .center
        self.addSubview(lable)
    }
    
    func currentTime() -> String {
        let date = Date()
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return timeFormatter.string(from: date)
    }
    
    
    
}
