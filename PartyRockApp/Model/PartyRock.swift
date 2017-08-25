//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by BhupinderJit Bais on 2017-08-12.
//  Copyright © 2017 BhupinderJit Bais. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    var videoURL: String {
        return _videoURL
    }
    
    var vidoeTitle: String {
        return _videoTitle
    }
    
    
    init(imageURL: String, videoURL: String, videoTitle:String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
