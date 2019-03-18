// Generated using Sourcery 0.16.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Alamofire
import RetrofireSwift

extension SessionManager {

	func getRepo(
		user: String,
		_ completion: @escaping ([GithubRepo]?, RetrofireError?) -> Void
	){

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
