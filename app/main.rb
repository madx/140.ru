class Main
  def self.call(e)
    [200, {"Content-Type"=>"text/plain"}, File.read('README.md')]
  end
end
