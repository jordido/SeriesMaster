def test_method(method, input, output, testnumber)
  text = self.new.method(method).call(input)
  if text == output
    p "OK test #{testnumber}"
  else
    p "FAIL test #{testnumber}, instead received #{text}"
  end
end