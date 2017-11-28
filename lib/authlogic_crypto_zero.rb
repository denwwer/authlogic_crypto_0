module Authlogic::CryptoProviders::Zero
  def self.encrypt(*tokens)
    tokens[0]
  end

  def self.matches?(crypted, *tokens)
    crypted === tokens[0]
  end
end
