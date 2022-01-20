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

class DecodeMessage
  def initialize(decoder_dict, message)
    @decoder_dict = decoder_dict
    decode_message(message)
  end

  def decode_char(char)
    @decoder_dict.each { |key, value| return key if value == char }
  end

  def decode_word(morse_w)
    char_arr = morse_w.split
    char_arr.map { |char| decode_char(char) }.join
  end

  def decode_message(message)
    words_temp = message.split(' / ').join('   ')
    words_arr = words_temp.split('   ')
    puts words_arr.map { |word| decode_word(word) }.join(' ')
  end
end

DecodeMorse = DecodeMessage.new(morse_dict,
                                '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
