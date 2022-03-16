

struct Person {
    let name = "Igor"
    let age = 29
    let hobby = "programming"
    
    func returnMyInfo() -> String {
        let info = """
            Ny name is \(name).
            I am \(age) years old.
            My hobby is \(hobby)
            """
        return info
    }
}

struct User {
    let login = "UserName"
    let password = "12345"
    
    func getLogin() -> String {
        login
    }
    
    func getPassword() -> String {
        password
    }
}
