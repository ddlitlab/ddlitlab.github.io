#!/bin/bash

WEBSITE_DIR="/Users/dave/Desktop/code/ddlit-website"
CSS_CLASSES_FILE="/tmp/css_classes.txt"
UNUSED_CLASSES_FILE="/tmp/unused_css_classes.txt"

echo "Checking for unused CSS classes..."
echo "Total CSS classes found: $(wc -l < $CSS_CLASSES_FILE)"

# Clear the unused classes file
> $UNUSED_CLASSES_FILE

# Counter for unused classes
unused_count=0

while IFS= read -r class; do
    # Remove the leading dot for searching
    class_name="${class#.}"
    
    # Skip empty lines
    if [ -z "$class_name" ]; then
        continue
    fi
    
    # Skip codicon classes
    if [[ "$class_name" == *"codicon"* ]]; then
        continue
    fi
    
    # Search for the class in HTML, Markdown, and JavaScript files
    # Look for class="..." class='...' or classes with spaces/other classes
    found=false
    
    # Search in HTML files
    if grep -r -q "class=[\"'][^\"']*\b$class_name\b[^\"']*[\"']" "$WEBSITE_DIR/layouts" 2>/dev/null; then
        found=true
    fi
    
    # Search in HTML files in public directory
    if [ "$found" = false ] && grep -r -q "class=[\"'][^\"']*\b$class_name\b[^\"']*[\"']" "$WEBSITE_DIR/public" 2>/dev/null; then
        found=true
    fi
    
    # Search in Markdown files for class attributes
    if [ "$found" = false ] && grep -r -q "class=[\"'][^\"']*\b$class_name\b[^\"']*[\"']" "$WEBSITE_DIR/content" 2>/dev/null; then
        found=true
    fi
    
    # Search in JavaScript files
    if [ "$found" = false ] && grep -r -q "\b$class_name\b" "$WEBSITE_DIR/assets/js" 2>/dev/null; then
        found=true
    fi
    
    # Search for className in JavaScript (React style)
    if [ "$found" = false ] && grep -r -q "className=[\"'][^\"']*\b$class_name\b[^\"']*[\"']" "$WEBSITE_DIR" 2>/dev/null; then
        found=true
    fi
    
    # Search for direct class name references (without quotes)
    if [ "$found" = false ] && grep -r -q "\b$class_name\b" "$WEBSITE_DIR/layouts" "$WEBSITE_DIR/content" 2>/dev/null; then
        found=true
    fi
    
    if [ "$found" = false ]; then
        echo "$class" >> $UNUSED_CLASSES_FILE
        ((unused_count++))
    fi
    
done < "$CSS_CLASSES_FILE"

echo "Found $unused_count potentially unused CSS classes"
echo "Results saved to $UNUSED_CLASSES_FILE"
