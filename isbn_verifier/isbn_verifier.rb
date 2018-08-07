# isbn verifier
class IsbnVerifier
  # changes number into a string
  def self.valid?(string)
    # clean removes the dashes and replaces with a blank space
    clean = string.delete('-', '')
    # (=~) "match operator" matches a string against a regular expression
    return false unless clean =~ /\A[0-9]{9}[0-9X]\z/
    (clean.chars.map { |c| c == 'X' ? 10 : c.to_i }.reverse.map.with_index(1) { |x, i| x * i }.inject(0, :+) % 11).zero?
  end
end
