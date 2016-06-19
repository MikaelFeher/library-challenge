require './lib/library.rb'
require 'yaml'
require 'date'


describe Library do

  it 'has a collection of books in a file' do
    expected_collection = YAML.load_file('./lib/data.yml')
    expect(subject.collection).to eq expected_collection
  end

  it 'checks if there are books available for checkout' do
    expect(subject.list_available_books).not_to be_empty
  end

  it 'expects to find desired title' do
    desired_title = subject.find_title('Alfons och soldatpappan')
    expect(subject.find_title(title)).to eq desired_title
  end

  # it 'are there any books checked out' do
  #   expect(subject.checked_out_books.empty?).to eq false
  # end
  #
  # it 'can search for a specific title' do
  #     result =  subject.search_title("Skratta lagom! Sa pappa Åberg")
  #     expected_item = {item: {title: "Skratta lagom! Sa pappa Åberg"}}
  #     expect(result).to include expected_item
  # end

  # it 'does checking a book out remove it from the available list' do
  #   expect
  # end

  # it 'checked out books recieve a return date' do
  #   expected_return_date = Date.today.next_month
  #   expect(library.set_return_date).to eq expected_return_date
  # end
  #

  #
  # it 'books can be checked out' do
  #   expect(library.check_out)         # will come back to this later.
  # end
end
