//
//  Persone.swift
//  HW_2.06_LatushkinAS
//
//  Created by Артём Латушкин on 18.02.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        
        User(
            login: "user",
            password: "pass",
            person: Person.getPersonInfo()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let job: Company
    let moreBio: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonInfo() -> Person {
        
        Person(
            name: "Artem",
            surname: "Latushkin",
            job: Company.getCompany(),
            moreBio: """
            Равным образом начало повседневной работы по формированию позиции представляет собой интересный эксперимент проверки соответствующий условий активизации. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Идейные соображения высшего порядка, а также постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации системы обучения кадров, соответствует насущным потребностям.
            """,
            photo: "Artem"
        )
    }
}

struct Company {
    let title: String
    let departament: Departament
    let jobTitle: JobTitle
    
    static func getCompany() -> Company {
        
        Company(
            title: "LLC",
            departament: .development,
            jobTitle: .dev
        )
    }
}

enum JobTitle: String {
    case dev = "DEV"
    case ceo = "CEO"
}

enum Departament: String {
    case development = "Development"
    case management = "Management"
}

 




