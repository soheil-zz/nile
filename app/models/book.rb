class Book < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :authors
  has_and_belongs_to_many :subjects

  def self.search(terms)
    search_by, search_term = terms.split(':')

    if search_by == 't'
      find_by_name(search_term)
    elsif search_by == 'a'
      [].tap do |books|
        Author.where(name: search_term).each do |a|
          a.books.each {|b| books <<  b }
        end
      end
    elsif search_by == 's'
      [].tap do |books|
        Subject.where(name: search_term).each do |s|
          s.books.each {|b| books <<  b }
        end
      end
    end
  end
end