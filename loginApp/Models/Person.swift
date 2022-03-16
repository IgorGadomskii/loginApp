import UIKit


struct Person {
    let name = "Igor"
    let age = 29
    let hobby = "programming"
    
    func returnMyInfo() -> String {
        let info = """
            Ny name is \(name).
            I am \(age) years old.
            My hobby is \(hobby).
            Do you want some extra?
            """
        return info
    }
    
    func showSorryMessage() -> String {
        let sorryText = """
            That's my legs on a beach.
            Sorry, I didn't have any other photo in access at the moment.
            But it is lovely, isn't is?
            """
        return sorryText
    }
    
    func showMyImage() -> UIImage? {
        let newImage = UIImage.init(
            named: "0054B986-4464-45F5-B5C0-FD4CF9D5A2F9_1_105_c")
        return newImage
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
