//
//  NewViewController.swift
//  FlixsterPt2
//
//  Created by Snezhana Valchuk on 3/16/23.
//

import UIKit
import Nuke



class NewViewCell: UITableViewCell {
    var movie: Movie!
    
    @IBOutlet weak var movieimageview: UIImageView!
    
    
    @IBOutlet weak var movietitle: UILabel!
    
    
    @IBOutlet weak var moviepopularity: UILabel!
    
    
    @IBOutlet weak var votecount: UILabel!
    
    @IBOutlet weak var voteaverage: UILabel!
    
    
    @IBOutlet weak var moviedescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with poster: Poster){
        Nuke.loadImage(with: URL(string:"https://image.tmdb.org/t/p/original"+poster.backdrop_path.absoluteString)!, into: movieimageview)
        movietitle.text = poster.original_title
        moviepopularity.text = String(poster.popularity)
        votecount.text = String(poster.vote_count)
        voteaverage.text = String(poster.vote_average)
        
        moviedescription.text=poster.overview
    }
}
