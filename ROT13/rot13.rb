def rot13(message)
  message = message.split('')
  a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.split('')
  b = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'.split('')
  h = Hash[a.zip(b)] 
  phrase = []
  message.each do |x|
    if a.include?(x)
      phrase.push(h[x])
    else
      phrase.push(x)
    end
  end
  phrase.join("") 
end

