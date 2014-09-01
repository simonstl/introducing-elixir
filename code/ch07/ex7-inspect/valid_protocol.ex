defprotocol Valid do
  @doc "Returns true if data is considered nominally valid"
  def valid?(data)
end
