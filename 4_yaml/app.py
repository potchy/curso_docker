import yaml

stream = open("test.yaml", "r")
dictionary = yaml.safe_load(stream)

for key, value in dictionary.items():
    print(f"{key} : {value}")