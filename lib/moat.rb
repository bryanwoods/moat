module Moat
  FILENAME = "#{ENV['HOME']}/.moatfile"
  SITES = {}

  def set(credentials)
    SITES[credentials[:site]] = {
      :username => credentials[:username],
      :password => credentials[:password]
    }
  end

  def username(site)
    SITES[site][:username]
  end

  def password(site)
    SITES[site][:password]
  end

  def save_passwords
    File.open(FILENAME, "w") {|file| file.puts SITES.to_yaml }
  end

  def load_passwords
    if File.exists?(FILENAME)
      SITES.merge!(YAML::load(File.open(FILENAME)))
    else
      {}
    end
  end

  def generate(length = 9)
    lowercase_letters = ('a'..'z').to_a
    uppercase_letters = ('A'..'Z').to_a
    numbers = ('0'..'9').to_a
    alphanumeric_array = lowercase_letters + uppercase_letters + numbers
    alphanumeric_array.shuffle[0..length].join
  end

end

