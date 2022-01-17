function greet()
    print("Hello world!\n")
end

function julia_main()::Cint
  greet()
  return 0 # if things finished successfully
end