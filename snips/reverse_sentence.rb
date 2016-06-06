#
# Module Interview provides <description>
#
# @author Joe Blog <Joe.Blog@nowhere.com>
#
module Interview
  # <description>
  #
  # @param [<type>] character <description>
  #
  # @return [<type>] <description>
  #
  def special_char?(character)
    character == '.' || character == ',' || character == '?' || character == '!'
  end

  #
  # <description>
  #
  # @param [<type>] word <description>
  #
  # @return [<type>] <description>
  #
  def reverse_word(word)
    reversed_word = Array.new(word.size)
    chars = word.each_char.to_a
    chars.each_index do |index|
      if isNonWhitespace(chars[index])
        reversed_word[(chars.size - 1) - index] = chars[index]
      else
        reversed_word << chars[index]
        ## Remove the nil as we appended the whitespace at the end
        reversed_word.compact!
      end
    end
    reversed_word
  end

  #
  # <description>
  #
  # @param [<type>] a_sentence <description>
  #
  # @return [<type>] <description>
  #
  def reverse_sentence(a_sentence)
    words_with_special_chars_too = a_sentence.split(' ')
    words_with_special_chars_too.each do |word|
      puts reverse_word(word) + ' '
    end
  end
end
