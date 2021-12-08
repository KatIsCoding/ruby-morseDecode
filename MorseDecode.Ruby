$code_english = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-
..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G','....' => 'H', '..' => 'I', '.---' => 'J', '-
.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N','---' => 'O', '.--.' => 'P', '--.-' => 'Q', '
.-. ' => 'R', '... ' => 'S', '- ' => 'T', '..- ' => 'U','...-' => 'V', '.--' => 'W', '-..-' => 'X', '
-.--' => 'Y', '--..' => 'Z', '|' => ' ' }

def decoder(code)
    code_english[code]
end
    
    
def decode_char_set(code_chars)
    code_chars = code_chars.split
    char_set = ''
    code_chars.each do |code_char|
    char_set += $code_english[code_char]
     end
  print char_set
end

decode_char_set('--')