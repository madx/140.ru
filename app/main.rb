class Main
  def self.call(e)
    [200, {"Content-Type" => "text/plain"}, File.read('README.md')]
  end

  def self.const_missing(name)
    lambda {
      [200, {"Content-Type" => "text/plain"}, "Hello #{name.to_s.underscore}"]
    }
  end
end
