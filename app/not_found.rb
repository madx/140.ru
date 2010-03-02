class NotFound
  def self.call(e)
    [404, {"Content-Type" => "text/plain"}, "Not Found"]
  end
end
