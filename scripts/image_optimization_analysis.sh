#!/bin/bash

# Image Optimization Script
# Analyzes and provides recommendations for image optimization

echo "🖼️  Image Optimization Analysis"
echo "==============================="

SITE_DIR="/Users/dave/Desktop/code/ddlit-website"
STATIC_DIR="$SITE_DIR/static"
CONTENT_DIR="$SITE_DIR/content"

echo "📊 Current Image Inventory:"
echo "-------------------------"

# Find all images
if [ -d "$STATIC_DIR/images" ]; then
    echo "Images in static/images:"
    find "$STATIC_DIR/images" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.svg" -o -name "*.webp" \) | wc -l
    
    echo ""
    echo "📏 Image sizes:"
    find "$STATIC_DIR/images" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" \) -exec ls -lh {} \; | awk '{print $5, $9}' | sort -hr | head -10
fi

if [ -d "$STATIC_DIR/illustrations" ]; then
    echo ""
    echo "Illustrations:"
    find "$STATIC_DIR/illustrations" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.gif" -o -name "*.svg" -o -name "*.webp" \) | wc -l
fi

echo ""
echo "🎯 Optimization Opportunities:"
echo "-----------------------------"

# Check for large images
echo "🔍 Large images (>500KB) that could be optimized:"
find "$STATIC_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) -size +500k -exec ls -lh {} \; 2>/dev/null | awk '{print $5, $9}'

echo ""
echo "📱 Responsive Image Recommendations:"
echo "----------------------------------"

# Look for images used in templates
echo "Images referenced in templates:"
grep -r "\.jpg\|\.png\|\.jpeg\|\.gif\|\.webp" "$SITE_DIR/layouts" --include="*.html" | head -5

echo ""
echo "💡 Optimization Strategies:"
echo "-------------------------"
echo "1. Format Optimization:"
echo "   • Convert large PNGs to JPEGs (if no transparency needed)"
echo "   • Use WebP format for modern browsers"
echo "   • Keep SVGs for icons and simple graphics"
echo ""
echo "2. Responsive Images:"
echo "   • Implement srcset for different screen sizes"
echo "   • Use Hugo's image processing features"
echo "   • Create multiple sizes: 320w, 768w, 1024w, 1920w"
echo ""
echo "3. Lazy Loading:"
echo "   • Add loading='lazy' to below-the-fold images"
echo "   • Implement intersection observer for advanced lazy loading"
echo ""
echo "4. Hero Image Optimization:"
echo "   • Preload critical hero images"
echo "   • Use appropriate formats and sizes"
echo "   • Consider CSS background-image for hero sections"

echo ""
echo "🛠️  Hugo Image Processing Example:"
echo "--------------------------------"
cat << 'EOF'
<!-- Example of optimized image usage in Hugo templates -->
{{ $image := resources.Get "images/hero.jpg" }}
{{ $small := $image.Resize "320x" }}
{{ $medium := $image.Resize "768x" }}
{{ $large := $image.Resize "1024x" }}
{{ $webp := $image.Resize "1024x webp" }}

<picture>
  <source srcset="{{ $webp.RelPermalink }}" type="image/webp">
  <img src="{{ $large.RelPermalink }}"
       srcset="{{ $small.RelPermalink }} 320w,
               {{ $medium.RelPermalink }} 768w,
               {{ $large.RelPermalink }} 1024w"
       sizes="(max-width: 768px) 100vw, 
              (max-width: 1024px) 50vw, 
              33vw"
       alt="Description"
       loading="lazy">
</picture>
EOF
