$code_english = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G','....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N','---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U','...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z', '|' => ' ', '/' => ' ' }

    
def decode_word(code_chars)
    code_chars = code_chars.split
    char_set = ''
    code_chars.each do |code_char|
        char_set += $code_english[code_char]
     end
  return char_set.to_s
end

def decode(sentence)
    sentence = sentence.split("   ")
    sentence_output = ''
    sentence.each do |word| 
        sentence_output += decode_word(word) + " "
    end
    return sentence_output
end

print decode('-- -.--   -. .- -- .')
