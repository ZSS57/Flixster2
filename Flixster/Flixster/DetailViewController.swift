

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var overviewTextView: UITextView!
    @IBOutlet weak var durationLabel: UILabel!
    

    //  Add a track property
    var track: Track!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the UI elements with the passed in track
        // Load the image located at the `artworkUrl100` URL and set it on the image view.
        
        
        let baseUrl = "https://image.tmdb.org/t/p/w500"
        let posterPath = track.backdrop_path.absoluteString
        
        let posterUrl=URL(string: baseUrl + posterPath)
        
        Nuke.loadImage(with: posterUrl!, into: trackImageView)

            // Set labels with the associated track values.
            trackNameLabel.text = track.title
            overviewTextView.text = track.overview
        
        
            let voteAve = String(format: "%.1f", track.vote_average)
            albumLabel.text = voteAve
        
            let popu = String(format: "%.3f", track.popularity)
            durationLabel.text = popu
 
            let voteCount:String = String(describing: track.vote_count)
            genreLabel.text = voteCount
        

        
        
            
        
        
            
        

        
        
    

    }



}
