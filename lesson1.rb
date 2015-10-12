require 'date'
class Lesson1
  def sum(val = 0)
    sum = 0
    val.to_s.split('').each{ |el| sum += el.to_i }
    sum
  end

  def age(birthday)
    if birthday
      days = (Date.today - Date.strptime(birthday.tr('/',''), "%d%m%Y")).to_i
      (days / 365).to_s + ' years or ' + days.to_s + ' days or ' + (days / 24).to_s + ' hours or ' + (days / 24 / 60).to_s + ' minutes or ' + (days / 24 / 60 / 60).to_s + ' seconds'
    else
      'Invalid Date Format'
    end
  end

  def name
    full_name = ''
    3.times do |input|
      input = gets
      full_name += ' ' + input
    end
    'Hello' + full_name + '!'
  end
end
