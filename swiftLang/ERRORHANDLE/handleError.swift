// ERROR handling in Swift

enum UserError: Error {
    case invalidID
    case networkFailure
}
func userDetails(id: Int, name: String) throws -> String {
    if id <= 0 {
        throw UserError.invalidID
    }
    // Simulate a network failure
    if name.isEmpty {
        throw UserError.networkFailure
    }
    return "User ID: \(id), Name: \(name)"
    
}

do {
    let details = try userDetails(id: 12, name: "Alice")
    print(details)
} catch UserError.invalidID {
    print("Error: Invalid User ID")
} catch UserError.networkFailure {
    print("Error: Network Failure")
} catch {
    print("An unexpected error occurred: \(error)")
}