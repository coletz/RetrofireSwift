public enum RetrofireError: Error {
    case server(text: String)
    case unparsableJson
    case emptyResponse
}
