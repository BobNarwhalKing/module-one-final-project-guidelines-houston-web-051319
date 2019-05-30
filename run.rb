require_relative './config/environment'
# prompt.ask('password:', echo: false)

prompt = TTY::Prompt.new
start(prompt)
# cohort_options = Cohort.all_names
# p cohort_options

# puts "\e[H\e[2J"
#  case start

#  when cohort = prompt.select("Which cohort would you like to know about?", %w("Houston-web-071618" 
# "Houston-web-082718" 
# "Houston-web-100818" 
# "Houston-web-111918" 
# "Houston-web-021819" 
# "Houston-web-040119" 
# "Houston-DS-042219" 
# "Houston-web-051319"
# "Go Back One"))
# p cohort
#  end

