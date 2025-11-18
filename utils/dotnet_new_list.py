#!/usr/bin/env python
import sys
import subprocess
import re


def run_dotnet_new_list() -> str:
    cmd = ['dotnet', 'new', 'list']
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error executing command: {e.stderr}")
        sys.exit(1)

    return result.stdout

def parse_template_table(output: str) -> list[tuple[str, str]]:
    lines = output.splitlines()
    templates: list[tuple[str, str]] = []

    pos = -1
    for line in lines:
        if pos == -1 and (p := line.find('Short Name')) != -1:
            pos = p
            continue

        if pos == -1 or not re.match(r'^[A-Za-z]', line):
            continue

        after_short_name = line[pos:]
        short_name = re.split(r'[ \t,]', after_short_name)[0]
        template_description = line[:pos].strip()
        templates.append((str(short_name), template_description))

    return templates


def main() -> None:
    output = run_dotnet_new_list()
    templates = parse_template_table(output)

    for short_name, description in templates:
        print(f"\"{short_name}:{description}\"")

if __name__ == '__main__':
    main()
