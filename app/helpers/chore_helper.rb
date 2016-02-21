def dirty? (chore)
  seconds_in_day=60*60*24
  if chore.goldstars != []
    last_cleaned = chore.goldstars.last.created_at
    if (Time.now - last_cleaned)/seconds_in_day > chore.frequency
      return true
    else
      return false
    end
  else #never been cleaned
    return true
  end
end

def dirty_sentence(chore_array)
  sentence = []
  sentence_to_send = []
  chore_array.each do |chore|
      sentence << chore.name if dirty?(chore)
  end
  sentence.each do |word|
    sentence_to_send << word + ","
  end

  sentence_to_send[-1].chop!
  sentence_to_send[-2].chop!
  sentence_to_send.insert(-2, "&")
  sentence_to_send << "need some love."

  return sentence_to_send.join(" ")
end