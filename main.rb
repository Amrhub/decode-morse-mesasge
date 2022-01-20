morse_dict = {
  'A' => '.-',
  'B' => '-...',
  'C' => '-.-.',
  'D' => '-..',
  'E' => '.',
  'F' => '..-.',
  'G' => '--.',
  'H' => '....',
  'I' => '..',
  'J' => '.---',
  'K' => '-.-',
  'L' => '.-..',
  'M' => '--',
  'N' => '-.',
  'O' => '---',
  'P' => '.--.',
  'Q' => '--.-',
  'R' => '.-.',
  'S' => '...',
  'T' => '-',
  'U' => '..-',
  'V' => '...-',
  'W' => '.--',
  'X' => '-..-',
  'Y' => '-.--',
  'Z' => '--..',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}

class DecodeMorseMessage
  def initialize(morse_dict)
    @morse_dict = morse_dict
  end

  def decode_char(char)
    @morse_dict.each { |key, value| return key if value == char }
  end

  def decode_word(morse_w)
    char_arr = morse_w.split(' ')
    return char_arr.map { |char| decode_char(char)}.join('')
  end
end

DecodeMorse = DecodeMorseMessage.new(morse_dict)

puts DecodeMorse.decode_char('-...')
puts DecodeMorse.decode_word('-- -.--')
