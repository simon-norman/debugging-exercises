def encode(plaintext, key)
  # In the ('a'...'z') statement, the intent is to
  # generate a string with the letters from a to z in
  # the alphabet, however currently it is generating a to y
  # and missing out z
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    # As there is no z generated in the cipher,
    # when encode is passed a plaintext
    # with a z in it, the cipher.find_index(z) returns nil
    # Then an exception is thrown when nil is added to 65
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end
