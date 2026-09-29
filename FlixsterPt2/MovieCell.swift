//
//  MovieCell.swift
//  FlixsterPt2
//
//  Created by Snezhana Valchuk on 3/15/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        movieTitle.text = movie.original_title
        movieDescription.text = movie.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string:"https://image.tmdb.org/t/p/w500"+movie.poster_path.absoluteString)!, into: movieImageView)
    }

}
