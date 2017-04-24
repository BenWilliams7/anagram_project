require("./lib/anagram.rb")
require("rspec")
require("pry")

describe "String#anagram" do
  it("Recognizes if two words are not anagrams.") do
    expect("ruby".anagram("hard")).to(include("This is not an anagram"))
  end
  it("Recognizes if two words are anagrams.") do
    expect("ruby".anagram("bury")).to(include("These words are anagrams"))
  end
  it("Returns false if the length is not equal") do
    expect("ruby".anagram("burrito")).to(include("This is not an anagram"))
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
  it("Returns an error if anagrams do not include vowels") do
    expect("ruby".anagram("rrrr")).to(eq("This is not a word because it has no vowels!"))
  end
  it("Doesn't care about non-letter characters for word1") do
    expect("ru by!".anagram("bury")).to(include("These words are anagrams"))
  end
  it("Doesn't care about non-letter characters for word2") do
    expect("ruby!".anagram("bu ry")).to(include("These words are anagrams"))
  end
  it("Returns false for repeat vowels") do
    expect("ruby".anagram("uuuu")).to(include("This is not an anagram"))
  end
end
