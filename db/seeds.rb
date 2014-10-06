author1 = Author.create(name: "John Smith")
author2 = Author.create(name: "Bruce Lee")

subject1 = Subject.create(name: "Martial Arts")
subject2 = Subject.create(name: "Math")
subject3 = Subject.create(name: "Airport Traffic Control")

Book.create(title: "Controlling Planes", author_id: author1.id, subject_id: subject3.id)
Book.create(title: "Karate for Dummies", author_id: author2.id, subject_id: subject1.id)
Book.create(title: "Math is cool!", author_id: author2.id, subject_id: subject2.id)
