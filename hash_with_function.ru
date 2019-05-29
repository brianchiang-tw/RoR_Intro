family_tree = {
                    oldest:     "Jim",
                    older:      "Joe",
                    younger:    "Jack"
}

family_tree[:youngest] = "Jeremy"

# expected output:
# {:oldest=>"Jim", :older=>"Joe", :younger=>"Jack", :youngest=>"Jeremy"}
puts family_tree.to_s



# Named parameter "like" behavior...
def adjust_colors( props={foreground: "red", background: "white"} )
    puts "Foreground: #{props[:foreground]}" if props[:foreground]
    puts "Background: #{props[:background]}" if props[:background]
end

# expexted output
# Foreground: red
# Background: white

# call adjust_colors with given paramter, so props would be default values specified in argument list


# expected output:
# Foreground: green
adjust_colors ({ :foreground => "green"} )


# expected output:
# Background: yello
adjust_colors background: "yello"


# expected output:
# Background: magenta
adjust_colors :background => "magenta"