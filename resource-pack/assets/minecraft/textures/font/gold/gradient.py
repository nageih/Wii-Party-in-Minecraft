import os
from PIL import Image

colors = [
    "#C69F00",
    "#C69F00",
    "#C69F00",
    "#FFCE07",
    "#FFCE07",
    "#FFE477",
    "#FFE477",
    "#FFE477"
]

def hex_to_rgba(hex_color):
    """Convert a hex color string (e.g. '#FF0000') to an (R, G, B, A) tuple."""
    r = int(hex_color[1:3], 16)
    g = int(hex_color[3:5], 16)
    b = int(hex_color[5:7], 16)
    return (r, g, b, 255)

def process_image(filename):
    """
    Open an image file, and for each row replace white or transparent pixels
    with the corresponding color from the list.
    
    For normal images, each row uses a color cycling from the list.
    For images starting with 'glyph_', colors are assigned in loops of 16 rows
    (each of the 8 colors is used for 2 rows).
    """
    try:
        img = Image.open(filename).convert("RGBA")
    except Exception as e:
        print(f"Error opening {filename}: {e}")
        return

    width, height = img.size
    pixels = img.load()
    is_glyph = filename.startswith("glyph_")
    is_accented = filename.startswith("accented")

    for y in range(height):
        # For glyph images, each color spans two rows.
        if is_glyph:
            color_index = (y // 2) % len(colors)
        elif is_accented:
            color_index = y % (len(colors) + 4)
            if color_index < 3:
                color_index = 0
            else:
                color_index -= 3
                if color_index >= len(colors):
                    color_index = len(colors) - 1
        else:
            color_index = y % len(colors)
        fill_color = hex_to_rgba(colors[color_index])
        
        for x in range(width):
            current = pixels[x, y]
            if current[3] != 0:
                pixels[x, y] = fill_color

    new_filename = filename # f"colored_{filename}"
    try:
        img.save(new_filename)
        print(f"Saved processed image as {new_filename}")
    except Exception as e:
        print(f"Error saving {new_filename}: {e}")

def process_all_images():
    """Process all PNG images in the current folder."""
    for f in os.listdir():
        if f.lower().endswith(".png"):
            process_image(f)

if __name__ == "__main__":
    process_all_images()
