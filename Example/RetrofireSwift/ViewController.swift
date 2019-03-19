import UIKit
import RetrofireSwift
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RetrofireConfig.networkProtocol = "https"
        RetrofireConfig.baseUrl = "api.github.com"
        RetrofireConfig.port = 443
        
        SessionManager.default.getRepoRest(user: "dcoletto") { (repoList, error) in
            repoList?.forEach { repo in
                print("Repo \(repo.name) from \(repo.owner.login)")
            }
        }
    }
}

protocol Api: Retrofire {
    // @GET = /users/{user}/repos
    func getRepoRest(
        /* @Path */ user: String
        ) -> [GithubRepo]
    
    // sourcery: GET = /users/{user}/repos
    func getRepoSourcery(
        /* sourcery: Path */ user: String
        ) -> [GithubRepo]
}

struct GithubRepo: Codable {
    var name: String
    var owner: GithubUser
}

struct GithubUser: Codable {
    var login: String
}
