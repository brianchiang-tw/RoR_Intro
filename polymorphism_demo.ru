box1 = { :name =>"Box1", :type=>"locked" }
box2 = { :name =>"Box2", :type=>"unlocked" }
box3 = { :name =>"Box3", :type=>"sealed" }


def open_box( box )
    if box[:type] == "locked"
        puts "Open locked box"
    elsif box[:type] == "unlocked"
        puts "Open unlocked box"
    elsif box[:type] == "sealed"
        puts "Open sealed box"
    end
end


array_demo = [ box1, box2, box3 ]

# expected output:
# Open locked box
# Open unlocked box
# Open sealed box
array_demo.each do | obj |
    open_box( obj )
end



class Box

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def open
        puts "Open a box."
    end

end



class LockedBox < Box 

    def open
        puts "Open a locked box."
    end

end



class UnlockedBox < Box 

    def open
        puts "Open an unlocked box."
    end
end



class SealedBox < Box 

    def open 
        puts "Open a sealed box."
    end

end


box1 = LockedBox.new("LockedBox")
box2 = UnlockedBox.new("UnlockedBox")
box3 = SealedBox.new("SealedBox")

array_demo = [box1, box2, box3]



# Open a locked box.
# Open an unlocked box.
# Open a sealed box.
array_demo.each do | box |
    box.open()
end