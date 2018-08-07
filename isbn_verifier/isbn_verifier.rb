# isbn verifier
class IsbnVerifier
  # changes number into a string
  def self.valid?(string)
    # clean removes the dashes
    clean = string.delete('-')
    # (=~) "match operator" matches a string against a regular expression
    # (//) checks whether a string contains a given pattern
    # (|A) "anchor" is saying match from the beginning of the string
    # (\z) denotes the end of the string
    # [0-9] the numbers inside the brackets can span between 0 and 9
    # {9} the preceeding numbers must contain 9 digits
    # [0-9X] says X is acceptable for the 9th spot
    return false unless clean =~ /\A[0-9]{9}[0-9X]\z/
    # if a character is X then the value is 10 and returns the 10 as a string
    # iterates through the array and adds the previous amount from the accumulator
    # (% 11) checks to make sure that none of the numbers are a multiple of 11
    (clean.chars.map { |c| c == 'X' ? 10 : c.to_i }.reverse.map.with_index(1) { |x, i| x * i }.inject(0, :+) % 11).zero?
  end
end
