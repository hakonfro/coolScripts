import sys, os
try:
    filename = sys.argv[1]
    directory = sys.argv[2]
    walker = os.walk(directory)
    for(dirpath, dirnames, filenames) in walker:
        for name in filenames:
            if filename in name:
                print(os.path.join(dirpath, name))

except IndexError:
    print("Example usage: $ python find.py \"filename\" \"directory\"")
#Example usage: find.py .java $HOME
