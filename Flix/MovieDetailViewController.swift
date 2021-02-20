//
//  MovieDetailViewController.swift
//  Flix
//
//  Created by Md Sadiq Sada on 2/18/21.
//

import UIKit
import AlamofireImage

class MovieDetailViewController: UIViewController {

    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backdropPoster: UIImageView!
    @IBOutlet weak var fullPoster: UIImageView!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185/"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        fullPoster.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780/" + backdropPath)
        backdropPoster.af.setImage(withURL: backdropUrl!)
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
