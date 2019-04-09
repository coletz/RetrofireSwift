// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Alamofire
import RetrofireSwift

extension SessionManager {

	func getRepo(
		user: String,
		_ completion: @escaping ([GithubRepo]?, RetrofireError?) -> Void
	){

		let method: HTTPMethod = .get
		let url =  "\(RetrofireConfig.fullUrl)/users/{user}/repos"
			.replacePathParameter(path: "user", variable: user)
		var urlComponent = URLComponents(string: url)!

		var request = try! URLRequest(url: urlComponent.url!, method: method)
		self.request(request)
			.validate(statusCode: 200..<300)
			.validate(contentType: ["application/json"])
			.responseJSON { response in
				guard response.result.isSuccess else {
					completion(nil, .server(text: String(describing: response.result.error)))
					return
				}
				if let data = response.data {
					if let jsonObj = try? JSONDecoder().decode([GithubRepo].self, from: data){
						completion(jsonObj, nil)
					} else {
						completion(nil, .unparsableJson)
					}
				} else {
					completion(nil, .emptyResponse)
				}
			}
	}
	func searchRepo(
		query: String,
		token: String,
		_ completion: @escaping (RepoList?, RetrofireError?) -> Void
	){

		let method: HTTPMethod = .get
		let url =  "\(RetrofireConfig.fullUrl)/search/repositories"
		var urlComponent = URLComponents(string: url)!
		var queryStringParam: [String:String] = [:]
		queryStringParam["q"] = query
		let queryItems = queryStringParam.map  { URLQueryItem(name: $0.key, value: $0.value) }
		urlComponent.queryItems = queryItems

		var request = try! URLRequest(url: urlComponent.url!, method: method)
		var headers: [String: String] = [:]
		request.allHTTPHeaderFields?.forEach { headers[$0.key] = $0.value }


		headers["Authorization"] = token

		request.allHTTPHeaderFields = headers
		self.request(request)
			.validate(statusCode: 200..<300)
			.validate(contentType: ["application/json"])
			.responseJSON { response in
				guard response.result.isSuccess else {
					completion(nil, .server(text: String(describing: response.result.error)))
					return
				}
				if let data = response.data {
					if let jsonObj = try? JSONDecoder().decode(RepoList.self, from: data){
						completion(jsonObj, nil)
					} else {
						completion(nil, .unparsableJson)
					}
				} else {
					completion(nil, .emptyResponse)
				}
			}
	}
}
