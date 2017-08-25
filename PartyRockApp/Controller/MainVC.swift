//
//  ViewController.swift
//  PartyRockApp
//
//  Created by BhupinderJit Bais on 2017-08-11.
//  Copyright © 2017 BhupinderJit Bais. All rights reserved.
//

import UIKit


class MainVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var partyRocks = [PartyRock] ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL:"https://i.ytimg.com/vi/TGofjPoQIq4/maxresdefault.jpg",
                           videoURL:"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TGofjPoQIq4\" frameborder=\"0\" allowfullscreen></iframe>",
                           videoTitle: "IK Gal - Garry Sandhu & Sudesh Kumari")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/nUVKwl2fvHc/hqdefault.jpg",
                           videoURL: "<iframe width=\'560\' height=\'315\' src=\'https://www.youtube.com/embed/nUVKwl2fvHc\' frameborder=\'0\' allowfullscreen></iframe>",
                           videoTitle: "Laddu - Garry Sandhu & Jasmin Sandles")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/vRC64LiJdvo/maxresdefault.jpg",
                           videoURL: "<iframe width=\'560\' height=\'315\' src=\'https://www.youtube.com/embed/vRC64LiJdvo\' frameborder=\'0\' allowfullscreen></iframe>",
                           videoTitle: "Hang - Garry Sandhu")
        
        let p4 = PartyRock(imageURL:"https://i.ytimg.com/vi/exQKEWYXotQ/maxresdefault.jpg",
                           videoURL: "<iframe width=\'560\' height=\'315\' src=\'https://www.youtube.com/embed/exQKEWYXotQ\' frameborder=\'0\' allowfullscreen></iframe>",
                           videoTitle: "EK Tera - Garry Sandhu")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/ZCvRLDbCmwE/maxresdefault.jpg",
                           videoURL: "<iframe width=\'560\' height=\'315\' src=\'https://www.youtube.com/embed/ZCvRLDbCmwE\' frameborder=\'0' allowfullscreen></iframe>",
                           videoTitle: "Fresh - Garry Sandhu")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
           let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        } else
        {
          return UITableViewCell ()
        }
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
        }
    }
    
  }
}
