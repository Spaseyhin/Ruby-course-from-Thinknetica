require "pony"

Pony.mail({
  :subject => "Привет из программы на руби!",
  :body => 'Что то',
  :to => 'evgeniy.kalinin1999žgmail.com',
  :from => 'evgen.kalin99@gmail.com',
  :via => :smtp,
  :via_options => {
    :address => 'smtp.gmail.com',
    :port => 587,
    :tls => true,
    :user_name => 'evgen.kalin99@gmail.com',
    :password => 'ohk&H89%7m&s4q5gak6409262',
    :authentication => :plain,
    :tls 'TLSv1_1'
  }
})