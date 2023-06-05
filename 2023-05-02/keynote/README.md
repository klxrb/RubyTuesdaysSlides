Date & Location
---------------
Online @ Youtube.

How to run this
---------------
Using docker:
```bash
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app -p 9393:9393 ruby:2.7 bash -c "bundle && shotgun app.rb"
```

Using plan & old bundle exec:
```bash
bundle exec shotgun app.rb
```

Collaborations
--------------
Please feel free to send pull requests if you want to add something.
