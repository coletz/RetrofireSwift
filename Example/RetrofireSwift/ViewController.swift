import UIKit
import RetrofireSwift
import Alamofire

class ViewController: UIViewController {
    
    let sessionManager: SessionManager = {
        let cfg = URLSessionConfiguration.default
        cfg.httpAdditionalHeaders = ["x-my-h":"myval"]
        let sm = SessionManager(configuration: cfg)
        
        return sm
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RetrofireConfig.networkProtocol = "https"
        RetrofireConfig.baseUrl = "api.github.com"
        RetrofireConfig.port = 443
        /*
        let username = "dcoletto"
        SessionManager.default.getRepo(user: username) { (repoList, error) in
            print("\n=== Repositories of '\(username)'")
            repoList?.forEach { repo in
                print("Repo \(repo.name)")
            }
        }*/
        
        let query = "retrofire swift"
        sessionManager.searchRepo(query: query, token: "not a value") { (container, error) in
            print("\n=== Repositories containing '\(query)'")
            container?.items.forEach { repo in
                print("Repo \(repo.name) from \(repo.owner.login)")
            }
        }
    }
}

protocol Api: Retrofire {
    // @GET = /users/{user}/repos
    func getRepo(
        /* @Path */ user: String
        ) -> [GithubRepo]
    
    // @GET = /search/repositories
    func searchRepo(
        /* @Query = q */ query: String,
        /* @Header = Authorization */ token: String
        ) -> RepoList
}

struct RepoList: Codable {
    var items: [GithubRepo]
}

struct GithubRepo: Codable {
    var name: String
    var owner: GithubUser
}

struct GithubUser: Codable {
    var login: String
}
