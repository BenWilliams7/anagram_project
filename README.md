# Anagram Checker

#### A webpage that compares two words or phrases to see if they are anagrams, antigrams, and/or palindromes. 4/7/17

#### By Ben Williams

## Description

Entering two strings will yield a comparison.

## Setup/Installation Requirements
* User needs git pivotal scripts in their CLI. Project can be modified with a text editor such as Atom after it has been downloaded from GitHub.

## Specifications
| Behavior | Input | Output |
|----------|:-----:|:------:|
| Recognizes if two words are not anagrams. | "ruby" "hard" | "This is not an anagram" |
| Recognizes if two words are anagrams. | "ruby" "bury" | "These words are anagrams" |
| "Recognizes that anagrams must be equal length | "ruby" "burrito" | "This is not an anagram" |
| Returns a note if anagrams are not palindromes | "ruby" "bury" | "These words are anagrams but the first word is not a palindrome" |
| Returns a note if anagrams are indeed palindromes | "hannah" "nnaahh" | "These words are anagrams and the first word is also a palindrome!"))
| Returns an error if anagrams do not include vowels | "ruby" "rrrr" | "This is not a word because it has no vowels!" |
| Doesn't care about non-letter characters for the first word | "ru by!" "bury" | "These words are anagrams" |
| "Doesn't care about non-letter characters for the second word | "ruby!" "bu ry" | "These words are anagrams" |

## Known Bugs

No known bugs! If you find any other issues, please contact me at benjarwilliams at gmail dot com.

## Support and contact details

If you'd like to improve upon or use this project, please contact me at benjarwilliams at gmail dot com.

## Technologies Used

* Built with Ruby. Gems include sinatra, sinatra-contrib, capybara, and rspec.

### License

Completely open source.

Copyright (c) 2016 Ben Williams
