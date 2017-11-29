[![Gem](https://img.shields.io/gem/dt/authlogic_crypto_zero.svg?style=flat-square)]()

**Authlogic Crypto Zero** - simply way to add performance when using 
[Authlogic](https://github.com/binarylogic/authlogic) gem
during tests execution disabling password encryption. More then 5% faster in comparison with *SCrypt* or *BCrypt* when run tests.

Step 1
```
gem 'authlogic_crypto_zero'
```

Step 2
```
  acts_as_authentic do |c|
    ...
    c.crypto_provider = Rails.env.test? ? Authlogic::CryptoProviders::Zero : YOUR_CRYPTO_PROVIDER
```
**IMPORTANT** this gem only for *test* environment and should not used in production.
