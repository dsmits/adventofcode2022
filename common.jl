module Common
export retrieve_input, retrieve_test_input

INPUT_PATH = "input"
TEST_INPUT_PATH = "test_input"

  function retrieve_input(day::Int)
    path = "$INPUT_PATH/day$day.txt"
    f = open(path)
    readlines(f)
  end

  function retrieve_test_input(day::Int)
    path = "$TEST_INPUT_PATH/day$day.txt"
    f = open(path)
    readlines(f)
  end



end
