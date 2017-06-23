def chessboard_cell_color(cell1, cell2)
  cell1 = cell1.downcase.split('')
  cell2 = cell2.downcase.split('')
  rows = {'a' => 0, 'b' =>1, 'c' => 0, 'd' => 1, 'e' => 0, 'f' => 1, 'g' => 0, 'h' =>1}
  puts (rows[cell1[0]] + cell1[1].to_i) % 2 == (rows[cell2[0]] + cell2[1].to_i) % 2
end


chessboard_cell_color("A1", "C3")
