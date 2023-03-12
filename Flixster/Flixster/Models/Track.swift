

import Foundation


struct Track:Decodable{
    
    let title: String
    let overview: String
    let poster_path: URL
    let backdrop_path: URL
    let vote_count: Int
    let vote_average: Double
    let popularity:Double
}
struct TracksResponse: Decodable{
    let results:[Track]
}

//
//extension Track {
//
//    /// An array of mock tracks
//    /// An array of mock tracks
//    static var mockTracks: [Track]  = [
//        Track(title: "Knock at the Cabin",
//              overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
//              poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
//              vote_count: "751",
//              vote_average: "6.6",
//              popularity: "4286.16"),
//        Track(title: "Black Panther: Wakanda Forever",
//              overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
//              poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
//              vote_count: "3783",
//              vote_average: "7.4",
//              popularity: "2949.117"),
//
//        Track(title: "Puss in Boots: The Last Wish",
//              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
//              poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!,
//              vote_count: "4235",
//              vote_average: "8.4",
//              popularity: "2820.651"),
//        Track(title: "Plane",
//              overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
//              poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
//              vote_count: "754",
//              vote_average: "6.9",
//              popularity: "2200.205"),
//        Track(title: "Little Dixie",
//              overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
//              poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
//              vote_count: "44",
//              vote_average: "6.3",
//              popularity: "1698.096"),
//        Track(title: "Huesera: The Bone Woman",
//              overview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
//              poster_path: URL(string:"https://www.themoviedb.org/t/p/w188_and_h282_bestv2/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!,
//              vote_count: "57",
//              vote_average: "6.8",
//              popularity: "1151.332")
//    ]
//
//    // We can now access this array of mock tracks anywhere like this:
//    // let tracks = Tracks.mockTracks
//}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
