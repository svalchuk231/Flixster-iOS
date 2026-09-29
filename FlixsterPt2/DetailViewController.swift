//
//  DetailViewController.swift
//  FlixsterPt2
//
//  Created by Snezhana Valchuk on 3/15/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    
    @IBOutlet weak var moviePopularity: UILabel!
    
    @IBOutlet weak var voteCount: UILabel!
    
    @IBOutlet weak var voteAverage: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with: URL(string:"https://image.tmdb.org/t/p/w500"+movie.backdrop_path.absoluteString)!, into: movieImageView)
        movieTitle.text = movie.original_title
        moviePopularity.text = String(movie.popularity)
        voteCount.text = String(movie.vote_count)
        voteAverage.text = String(movie.vote_average)
        
        movieDescription.text=movie.overview

        // Create a date formatter to style our date and convert it to a string
  /*      let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        releaseDateLabel.text = dateFormatter.string(from: track.releaseDate)*/

        // Use helper method to convert milliseconds into `mm:ss` string format
 //       durationLabel.text = formattedTrackDuration(with: track.trackTimeMillis)

    }


}
