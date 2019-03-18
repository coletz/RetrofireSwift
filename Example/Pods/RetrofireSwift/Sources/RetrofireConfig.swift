public class RetrofireConfig {
    public static var networkProtocol: String = "https"
    public static var baseUrl: String = ""
    public static var port: Int = 443
    
    public static var fullUrl: String {
        get {
            return "\(networkProtocol)://\(baseUrl):\(port)"
        }
    }
}
