extension String {
    func replacePathParameter(path: String, variable: String) -> String {
        return self.replacingOccurrences(of: "{\(path)}", with: variable)
    }
}
