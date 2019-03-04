Goal: Call send email, an argument is the body, subject, list of recipients,
body and subject are empty. List of recipients cant be empty
if list of recipients empty we raise and error
at the end, we want to see a message "email #{subject}, with the body: #{body} has been sent to []"

1. if not an array
2. if empty

def send_email(body, subject, recipients)
  if recipients = nil


