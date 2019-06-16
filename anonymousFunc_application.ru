
def demo_file_handler(file_name, file_mode)

    # pre-processing, open a file
    fh= File.open(file_name, file_mode)

    yield(fh)

    # post-processing, close a file
    fh.close

end



demo_file_handler("demo_file_handler.txt", "w") do |fh|
    fh.write("To be, or not to be: that is the question.\n")
    fh.write("Whether it’s nobler in the mind to suffer\n")
end