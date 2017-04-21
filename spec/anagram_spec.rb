require("./lib/anagram.rb")
require("rspec")
require("pry")

describe "String#anagram" do
  it("Returns false if two words are not anagrams.") do
    expect("ruby".anagram("hard")).to(eq("This is not an anagram"))
  end
  it("Returns true if two words are anagrams.") do
    expect("ruby".anagram("bury")).to(include("These words are anagrams"))
  end
  it("Returns false if the length is not equal") do
    expect("ruby".anagram("burrito")).to(eq("This is not an anagram"))
  end
  it("Accounts for the possibility that words w/ different cases are still anagrams") do
    expect("RuBy".anagram("bUrY")).to(include("These words are anagrams"))
  end
  it("Returns a note if anagrams are not palindromes") do
    expect("ruby".anagram("bury")).to(include(" but the first word is not a palindrome"))
  end
  it("Returns a note if anagrams are indeed palindromes") do
    expect("hannah".anagram("nnaahh")).to(include(" and the first word is also a palindrome!"))
  end
end
