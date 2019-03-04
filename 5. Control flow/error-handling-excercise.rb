#Goal: Call send email, an argument is the body, subject, list of recipients,
#body and subject are empty. List of recipients cant be empty
#if list of recipients empty we raise an error
#at the end, we want to see a message email #{subject}, with the body: #{body} has been sent to []

#this does not look like an error!

def send_email(subject, body, recipients)
  if recipients == [] #check something
    raise ArgumentError, "email #{subject}, with the body: #{body} has been sent to []"
  end
  if body == nil
    raise ArgumentError, "body cannot be empty"
  end
  #do something
end

#call the method in a different part of the app
begin
#send_email(nil, nil, "hello")
send_email(nil, nil, [])
  rescue ArgumentError => e #if error happens store as an object in e
    puts e.message
end


#Mandy's bonus - raise an error if body is empty
#Mandy bonus 2 - send another email


def blast_email(subject, body, recipients)
  if recipients == [] #check something
    raise ArgumentError, "email #{subject}, with the body: #{body} has been sent to []"
  end
  if body == nil
    raise ArgumentError, "body cannot be empty"
  end
  #do something
end

#call the method in a different part of the app
begin
send_email(nil, nil, "hello")
send_email(nil, nil, [])
  rescue ArgumentError => e #if error happens store as an object in e
    puts e.message
end
