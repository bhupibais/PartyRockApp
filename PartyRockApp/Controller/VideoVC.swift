//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by BhupinderJit Bais on 2017-08-12.
//  Copyright © 2017 BhupinderJit Bais. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return  _partyRock
        }
        set {
          _partyRock = newValue
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = partyRock.vidoeTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
