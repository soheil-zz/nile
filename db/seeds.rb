# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


b1 = Book.create(:title => "Chicago")
b2 = Book.create(:title => "San Francisco")

a1 = Author.create(:name => "Bulls")
a2 = Author.create(:name => "Warriors")

s1 = Subject.create(:name => "city")
s2 = Subject.create(:name => "basketball")

Authorship.create(:book_id => b1.id, :author_id => a1.id)
Authorship.create(:book_id => b1.id, :author_id => a2.id)
Authorship.create(:book_id => b2.id, :author_id => a1.id)

BookSubject.create(:book_id => b1.id, :subject_id => s1.id)
BookSubject.create(:book_id => b1.id, :subject_id => s2.id)
BookSubject.create(:book_id => b2.id, :subject_id => s1.id)
BookSubject.create(:book_id => b2.id, :subject_id => s2.id)
