User.destroy_all
Question.destroy_all

User.create!(
  email: 'user1@qwest.io',
  password: 'password',
)

Question.create!(
  prompt: 'What does your ideal weekend look like?',
)
Question.create!(
  prompt: 'What is your favorite animal?',
)
Question.create!(
  prompt: 'What is your favorite programming language?',
)
