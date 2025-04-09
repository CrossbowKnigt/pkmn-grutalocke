import re

with open("pokemon_forms.txt", "r", encoding="utf-8") as f:
    content = f.read()

matches = re.findall(r"\[([A-Z0-9]+),(\d+)\][^\[]+?FormName\s*=\s*Forma Paralela", content, re.DOTALL)

formatted = sorted([f":{name}_{form}" for name, form in matches])

for f in formatted:
    print(f)

print(f"\nTotal: {len(formatted)} Pokémon con Forma Paralela")
