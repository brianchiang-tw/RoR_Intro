
module MyModule

    DemoConstant = "Outside"

    class DemoClass

        # expected output:
        # Outside
        puts DemoConstant

        DemoConstant = "Inside"

        # expected output:
        # Inside
        puts DemoConstant


    end

    # expected output:
    # Outside
    puts DemoConstant

end