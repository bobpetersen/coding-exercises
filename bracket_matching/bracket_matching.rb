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
  # the stack (this is not an array)
  # (think of it as verticle, you can only access the top or last)

  def self.paired?(string)
    stack = []

    # loops through each character
    # if statement to check if it includes a key(opening) bracket
    # if it does it will push it to the stack

    string.chars.each do |char|
      if BRACKETS.key?.include?(char)
        stack.push(char)
      elsif BRACKETS.value?.include?(char)

        # checks the value(closing) of bracket if it's matches it will
        # pop the openeing bracket off the top of the stack

        return false unless BRACKETS[stack.pop] == char
      end
    end
    stack.empty? # if the stack is empty it will return true
  end
end

# don't run the test given in the instructions. it's named incorrectly
