import sys, os
path = os.path.dirname(sys.argv[0])
filenames = os.listdir(path)
for file in filenames:
	for ch in file:
		if ch == "_":
			os.remove(os.path.join(path,file))
			print("removed: " + file)
			break
