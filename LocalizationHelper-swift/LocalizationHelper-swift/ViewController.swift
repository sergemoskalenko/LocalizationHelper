//
//  ViewController.swift
//  LocalizationHelper
//
//  Created by Serge Moskalenko on 28.02.17.
//  http://camopu.rhorse.ru/LocalizationHelper
//  https://github.com/sergemoskalenko/LocalizationHelper
//  Copyright © 2017 Serge Moskalenko. All rights reserved.
//
import Cocoa
class ViewController: NSViewController, NSTabViewDelegate {
    @IBOutlet weak var tabView: NSTabView!
    @IBOutlet var sourceTextView: NSTextView!
    @IBOutlet var localizedTextView: NSTextView!
    @IBOutlet var resultTextView: NSTextView!
    @IBOutlet weak var infoLabelView: NSTextField!
    
    @IBAction func clearButtonAction(_ sender: NSButton) {
        print("click")
        self.tabView.selectTabViewItem(at: 0)
        self.sourceTextView.string = ""
        self.localizedTextView.string = ""
        self.resultTextView.string = ""
        self.infoLabelView.stringValue = "!"
        // NSPasteboard.general().clearContents()
    }
    
    @IBAction func heplButtonAction(_ sender: NSButton) {
        let appDelegate: AppDelegate? = (NSApplication.shared().delegate as? AppDelegate)
        appDelegate?.helpAction(self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet { super.representedObject = representedObject }
        // Update the view, if already loaded.
    }
    
    func tabView(_ tabView: NSTabView, didSelect tabViewItem: NSTabViewItem?) {
        print("Tab: \(tabViewItem?.identifier)")
        let ind = Int(tabViewItem?.identifier as! String)!
        switch ind {
        case 1:
            // source
            self.infoLabelView.stringValue = "Paste sourse strings"
        case 2:
            // localized
            self.infoLabelView.stringValue = "Paste translation strings"
        case 3:
            // result
            doIt()
            
        default:
            break
        }
        
    }
    
    func doIt()
    {
        let sourceString: String = self.sourceTextView.string!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        var sourceArray: [Any] = sourceString.components(separatedBy: "\n")
        let localizedString: String = self.localizedTextView.string!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        var localizedArray: [Any] = localizedString.components(separatedBy: "\n")
        for i in 0..<sourceArray.count {
            let oneStr: String = sourceArray[i] as! String
            if oneStr.hasPrefix("/*") {
                localizedArray[i] = oneStr
                var dataString: String = sourceArray[i + 1] as! String
                while dataString.contains("  ") {
                    dataString = dataString.replacingOccurrences(of: "  ", with: " ")
                }
                var dataStringPartsArray: [Any] = dataString.components(separatedBy: " = ")
                let keyPart: String = dataStringPartsArray[0] as! String
                var dataStringLocalized: String = localizedArray[i + 1] as! String
                dataStringLocalized = (dataStringLocalized as NSString).replacingOccurrences(of: keyPart, with: keyPart, options: .caseInsensitive, range: NSRange(location: 0, length: (dataStringLocalized.characters.count )))
                localizedArray[i + 1] = dataStringLocalized
            }
        }
        self.resultTextView.string = (localizedArray as NSArray).componentsJoined(by: "\n")
        NSPasteboard.general().clearContents()
        NSPasteboard.general().setString(self.resultTextView.string!, forType: NSStringPboardType)
        self.infoLabelView.stringValue = "Copied to Pasteboard!"
    }
}
