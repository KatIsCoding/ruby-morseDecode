# frozen_string_literal: true

def decode_char(char)
  code_english = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
                   '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
                   '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S',
                   '-' => 'T', '..-' => 'U', '...-' => 'V',
                   '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
                   '--..' => 'Z', '|' => ' ', '/' => ' ' }
  code_english[char]
end

def decode_word(code_chars)
  code_chars = code_chars.split
  char_set = ''
  code_chars.each do |code_char|
    char_set += decode_char(code_char)
  end
  char_set.to_s
end

def decode(sentence)
  sentence = sentence.split('   ')
  sentence_output = ''
  sentence.each do |word|
    sentence_output += "#{decode_word(word)} "
  end
  sentence_output
end

print decode('-- -.--   -. .- -- .')
