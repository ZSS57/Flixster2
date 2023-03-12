

import UIKit
import Nuke

class TrackCell: UITableViewCell {
    
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    
    }
    
    func configure(with track: Track) {
        
       //trackNameLabel.text = track.title
        //artistNameLabel.text = track.overview
        trackNameLabel.text = track.title
        artistNameLabel.text = track.overview
       
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = track.poster_path.absoluteString
        
        let posterUrl=URL(string: baseUrl + posterPath)

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with:posterUrl! , into: trackImageView)
    }

}
