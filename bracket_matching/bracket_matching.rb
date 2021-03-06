# returns the class of object
# defines what opening and closing brackets are
# key: value,
class Brackets
  BRACKETS = {
    '(' => ')',
    '[' => ']',
    '{' => '}'
  }.freeze
  # self defines the method bracket. (string) is the argument it can accept
  # the stack (think of it as a vertical array in which
  # you can only access the top or last)
  def self.paired?(string)
    stack = []
    # loops through each character
    # if statement to check includes a key(opening) bracket
    # it will push it to the stack
    string.chars.each do |char|
      if BRACKETS.key?(char)
        stack.push(char)
      elsif BRACKETS.value?(char)
        # checks the value(closing) of bracket if it's matches it will
        # pop the openeing bracket off the top of the stack
        return false unless BRACKETS[stack.pop] == char
      end
    end
    # if the stack is empty it will return true
    stack.empty?
  end
end

# don't run the test given in the instructions. it's named incorrectly
