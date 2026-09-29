//
//  Movies.swift
//  FlixsterPt2
//
//  Created by Snezhana Valchuk on 3/15/23.
//

import Foundation

struct Movie: Decodable{
    let original_title: String
    let overview: String
    let poster_path: URL

    // Detail properties
    let vote_average:Float
    let vote_count: Int
    let popularity: Float
  //  let release_date: Date
    let backdrop_path: URL
    
}

struct MoviesResponse: Decodable{
    let results: [Movie]
}

