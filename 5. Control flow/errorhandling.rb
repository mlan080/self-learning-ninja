
#EG.1 Output: first puts, skips to rescue

def raise_and_rescue
  begin

    puts 'before an exception raises'
    raise NoMethodError, 'try again loser'
    puts 'after exception'

  rescue
    puts 'finally saved'
  end
puts 'outside of begin block'
end
raise_and_rescue

#EG. 2

why do we need to put this raise inside a do block if it raises itself?
begin
  raise 'No method error loser'

EG. 3

begin
1/0
rescue ZeroDivisionError => e
  puts "Execption Message: #{e.message }"
end


#EG. 4 Raising my own exceptions with raise
begin
  raise ArgumentError,'You messed up'
rescue ArgumentError => e
  puts e.message
end

#EG 5 Own error class
class PermissionDeniedError < StandardError
  end

  raise PermissionDeniedError.new()
