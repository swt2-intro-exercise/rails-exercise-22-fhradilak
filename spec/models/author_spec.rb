describe "New author model", type: :model do
  first_name="Bert"
  last_name="Bertson"
  homepage="bert.com"
  author = Author.new(first_name=first_name, last_name=last_name, homepage=homepage)
  it "should have a first_name, last_name and homepage and a method name" do
    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)

    expect(author.name).to eq(first_name + " " + last_name)

  end
end

