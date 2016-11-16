require 'pry'
subway = {
 N:["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
 L:["8th", "6th", "Union Square", "3rd", "1st"],
 "6":["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

def print_stops(stops)
  puts ""
  stops.each do |stop|
   print stop+" "
  end
 puts ""
end

def start_trip(line, start_index, end_index)
  if (start_index < end_index)
     stops = line[start_index..end_index]
  else
     stops = line[end_index..start_index].reverse
  end
  return stops
end

def change_at_union(line, union_index, end_index)
   puts "\nChange stations at Union"
    if (union_index < end_index)
        stops = start_trip( line, ( union_index + 1 ), end_index )
    else
        stops = start_trip( line, ( union_index - 1 ), end_index )
    end
  return stops
end

def check_lines(line1, station1, line2, station2)
  start_index = line1.index(station1)
  end_index = line2.index(station2)

  union_index1 = line1.index("Union Square")
  union_index2 = line2.index("Union Square")

  if ( line1 == line2 )
   print_stops( start_trip(line1, start_index, end_index) )
  else
   print_stops( start_trip( line1, start_index, union_index1 ) )
   print_stops( change_at_union( line2, union_index2, end_index ) )
  end
end

check_lines(subway[:N], "Times Square", subway[:"6"], "Grand Central")
check_lines(subway[:L], "1st", subway[:"6"], "Astor Place")
check_lines(subway[:"6"], "33rd", subway[:"L"], "6th")
