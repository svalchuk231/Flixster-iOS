//
//  Posters.swift
//  FlixsterPt2
//
//  Created by Snezhana Valchuk on 3/15/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
    
    let original_title:String
    let backdrop_path: URL
    let overview: String
    let vote_average: Double
    let vote_count: Int
    let popularity: Double
}
