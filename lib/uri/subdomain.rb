require 'uri'

module URI::Subdomain

  VERSION = "0.0.2"

  def domain
    host.split('.').last(2).join('.') if host
  end

  def subdomain
    host.split('.').tap(&:pop).tap(&:pop).join('.') if host
  end

  def subdomain= subdomain
    self.host = "#{subdomain}.#{domain}"
  end

  URI::Generic.send :include, self

end
