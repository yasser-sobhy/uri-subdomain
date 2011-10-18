require 'uri'

module URI::Subdomain

  VERSION = "0.0.1"

  def domain
    host.split('.').last(2).join('.')
  end

  def subdomain
    host.split('.').tap(&:pop).tap(&:pop).join('.')
  end

  def subdomain= subdomain
    self.host = "#{subdomain}.#{domain}"
  end
  
  URI::HTTP.send :include, self

end
