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
}
import Alamofire
import RetrofireSwift

extension SessionManager {

	func createUser(
		userId: User,
		_ completion: @escaping (UserResponse?, RetrofireError?) -> Void
	){

		let method: HTTPMethod = .post
		let url =  "\(RetrofireConfig.fullUrl)/api/users/{user}"
		var urlComponent = URLComponents(string: url)!

		var request = try! URLRequest(url: urlComponent.url!, method: method)
		let body = try! JSONEncoder().encode(userId)
		let headers = [ "Content-Type": "application/json" ]
		request.httpMethod = "POST"
		request.httpBody = body
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
					if let jsonObj = try? JSONDecoder().decode(UserResponse.self, from: data){
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
