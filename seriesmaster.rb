
class SeriesMaster

	def best_of(list_of_series)

		return list_of_series.max {|series1,series2| series1[2] <=> series2[2]}[0]

	end

	def prefered(series1, series2)

	end

end

def test_method(method, input, output, testnumber)
  text = SeriesMaster.new.method(method).call(input)
  if text == output
    p "OK test #{testnumber}"
  else
    p "FAIL test #{testnumber}, instead received #{text}"
  end
end

list_of_series=[["Veep",2013,5],["Friends",2013,7], ["The Wire",2012,8], ["Southpark",2000,0]]

test_method(:best_of, list_of_series, "The Wire", 1)

list_of_series << ["Prison Break",2012,9.5]

test_method(:best_of, list_of_series, "Prison Break", 2)





