import os

directory = "/mnt/c/Users/dreut/Github/rojter-tech/rojtertibia/data/monster"

[os.rename(os.path.join(directory, f), os.path.join(directory, f).replace(' ', '_').lower()) for f in os.listdir(directory)]