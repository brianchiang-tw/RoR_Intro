
editor_props =  {   "font"=> "Arial",
                    "size"=>12,
                    "color"=>"red"
                }



# Get the length of this hash entity, editor_props
# expected output:
# 3
puts editor_props.length


# Get the value with key "font"
# expected output:
# Arial
puts editor_props["font"]


# Insert new pair with key="background" and value="Blue"
editor_props["background"]="Blue"

# Visit and print each pair one by one
editor_props.each_pair do | key, value |
    puts "Key: #{key}, value: #{value}"
end