require 'rails_helper'

describe Book do
  describe '.search' do
    let!(:bar_author) { Author.create(name: 'bar') }
    let!(:fizz_subject) { Subject.create(name: 'fizz') }
    let!(:foo_book) do
      Book.create(name: 'foo')
    end

    context 'by book title' do
      it 'finds book by title' do
        expect(Book.search('t:foo')).to eq(foo_book)
      end
    end

    context 'by author name' do
      before do
        foo_book.authors << bar_author
      end

      it 'finds book by author name' do
        expect(Book.search('a:bar')).to eq([foo_book])
      end
    end

    context 'by subject name' do
      before do
        foo_book.subjects << fizz_subject
      end

      it 'finds book by author name' do
        expect(Book.search('s:fizz')).to eq([foo_book])
      end
    end
  end
end