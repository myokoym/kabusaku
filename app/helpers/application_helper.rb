Kabusaku::App.helpers do
  def build_query(command, params={})
    url = "http://localhost:10051/d/#{command}"
    return url if params.empty?
    url << "?"
    url << params.map do |key, value|
      "#{key}=#{value}"
    end.join("&")
    url
  end
end
