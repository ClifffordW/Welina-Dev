import os
import re
import xml.etree.ElementTree as ET

# Configuration
INPUT_DIR = "images/inventoryimages"  # Path to your textures
OUTPUT_FILE = "scripts/defs/atlas/invimages.lua"

def get_tex_names_from_xml(xml_path):
    """Parses a DST atlas XML and returns a list of texture names."""
    try:
        tree = ET.parse(xml_path)
        root = tree.getroot()
        # Find all <Element name="something.tex" />
        return [el.get('name').replace('.tex', '') for el in root.findall('.//Element')]
    except Exception as e:
        print(f"Error parsing {xml_path}: {e}")
        return []

def generate_lua_lut():
    if not os.path.exists(INPUT_DIR):
        print(f"Error: Directory {INPUT_DIR} not found.")
        return

    lut = {}
    
    # Scan for all XML files in the directory
    for file in os.listdir(INPUT_DIR):
        if file.endswith(".xml"):
            atlas_name = file.replace(".xml", "")
            tex_list = get_tex_names_from_xml(os.path.join(INPUT_DIR, file))
            if tex_list:
                lut[atlas_name] = sorted(tex_list)

    # Build the Lua String
    lua_output = "-- Auto-generated Atlas/Texture LUT\n\n"
    lua_output += "local asset_lut = {\n"
    
    for atlas, textures in sorted(lut.items()):
        lua_output += f'    ["{atlas}"] = {{\n'
        for tex in textures:
            # We use the tex name as the key so you can do: lut.welina_items.welina_catnip
            lua_output += f'        {tex} = "{tex}",\n'
        lua_output += "    },\n"
        
    lua_output += "}\n\nreturn asset_lut"

    # Save the file
    os.makedirs(os.path.dirname(OUTPUT_FILE), exist_ok=True)
    with open(OUTPUT_FILE, "w", encoding="utf-8") as f:
        f.write(lua_output)
    
    print(f"Success! Generated LUT with {len(lut)} atlases at {OUTPUT_FILE}")

if __name__ == "__main__":
    generate_lua_lut()