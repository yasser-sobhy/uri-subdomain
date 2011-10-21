require 'uri'

module URI::Subdomain

  VERSION = "0.0.3"

  def domain
    host.split('.').last(2).join('.') if host
  end

  def domain= domain
    if subdomain.nil?
      self.host = domain
    else
      self.host = "#{subdomain}.#{domain}"
    end
  end

  def subdomain
    return nil if host.nil?
    subdomain = host.split('.').tap(&:pop).tap(&:pop).join('.')
    subdomain == "" ? nil : subdomain
  end

  def subdomain= subdomain
    self.host = "#{subdomain}.#{domain}"
  end

  URI::Generic.send :include, self

end
