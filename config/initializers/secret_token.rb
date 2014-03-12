# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Employee::Application.config.secret_key_base = 'f5a1f50c4759411ed0f66fb16636819f905668c081fe797cda0ed36462f68b14cfd485e0b7ff5f699ad2d5cd5ffa17057370477a2c80ce413fd1916f1cab5487'
