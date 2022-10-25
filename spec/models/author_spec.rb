describe "New author model", type: :model do
  first_name="Bert"
  last_name="Bertson"
  homepage="bert.com"
  author = Author.new(first_name:first_name, last_name:last_name, homepage:homepage)
  it "should have a first_name, last_name and homepage and a method name" do
    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)

    expect(author.name).to eq(first_name + " " + last_name)

  end

  it "should be able to fill in author data and submit them" do
    visit new_author_path
    page.fill_in "author[last_name]", with: last_name
    page fill_in "author[first_name]", with: first_name
    page fill_in "author[homepage]", with: homepage

    find('input[type="submit"]').click

    expect(Author.exists?(first_name: first_name, last_name: last_name, homepage: homepage)).to be_truthy

  end
end

