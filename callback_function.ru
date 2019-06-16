class Record

    def self.register_before_callback( &code_block )
        @@before_callback = code_block
    end

    def self.register_after_callback( &code_block )
        @@after_callback = code_block
    end

    def save

        # invoke before callback
        @@before_callback.call

        puts "Save into database."

        # invoke after callback
        @@after_callback.call

    end

end
# End of definition of Record class





Record.register_before_callback do
    puts "put code block for before_callback here."
end



Record.register_after_callback do
    puts "put code block for after_callback here."
end



record_obj = Record.new



# expected output:
# put code block for before_callback here.
# Save into database.
# put code block for after_callback here.
record_obj.save