[![Circle CI](https://circleci.com/gh/kirillweb/parkpic/tree/master.svg?style=svg&circle-token=fe91608ca099522f6d4cb1050456983121245282)](https://circleci.com/gh/kirillweb/parkpic/tree/master)

# Parkpic

## How to deploy

  Before first deploy:

  heroku config:set KEY_BASE='your_key'
  heroku config:set KEY_TOKEN='your_key'

  Deploy:

  rake assets:precomplie
  git add .
  git commit -m "add assets"
  git push heroku your-branch:master