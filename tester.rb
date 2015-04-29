require 'httparty'

url = "http://localhost:4567" # update this if needed

HTTParty.post "#{url}/lists/Homework/tasks", body: { task_name: 'Photography Assignment' }
sleep 1

