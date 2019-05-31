
module Test

    PI = 3.14

    class Test2

        def what_is_pi
            puts PI
        end

    end

end

mathObj = Test::Test2.new

# expected output:
# 3.14
mathObj.what_is_pi