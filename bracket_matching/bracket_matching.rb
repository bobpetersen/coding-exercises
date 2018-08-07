class Brackets    # creates an object of the type class
  BRACKETS = {    # defines what opening and closing brackets are
    '(' => ')',   # key: value,
    '[' => ']',
    '{' => '}'
  }

  def self.paired?(string)                    # self defines the method bracket. (string) is the argument it can accept
    stack = []                                # the stack (this is not an array)(think of it as verticle, you can only access the top or last)

    string.chars.each do |char|               # loops through each character
      if BRACKETS.keys.include?(char)         # if statement to check if it includes a key(opening) bracket
        stack.push(char)                      # if it does it will push it to the stack
      elsif BRACKETS.values.include?(char)    
        return false unless BRACKETS[stack.pop] == char  # checks the value(closing) of bracket if it's matches it will 
      end                                                # pop the openeing bracket off the top of the stack
    end
    stack.empty?  # if the stack is empty it will return true
  end
end

# don't run the test given in the instructions. it's named incorrectly