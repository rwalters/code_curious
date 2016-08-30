class Cypher
  PLAIN_TEXT = ('a'..'z').to_a
  CRYPT_TEXT = ['z'] | ('a'..'y').to_a

  def encrypt(to_encrypt)
    transform(to_encrypt, PLAIN_TEXT, CRYPT_TEXT)
  end

  def decrypt(to_decrypt)
    transform(to_decrypt, CRYPT_TEXT, PLAIN_TEXT)
  end

  private

  def transform(input_text, from_text, to_text)
    to_array(input_text).map do |char|
      if from_text.include?(char)
        position = from_text.index(char)

        to_text[position]
      else
        char
      end
    end.join
  end

  def to_array(to_transform)
    to_transform.downcase.chars
  end
end
