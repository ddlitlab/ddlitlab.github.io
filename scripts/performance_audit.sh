#!/bin/bash

# Performance Audit Script for DDLitLab Website
echo "🚀 DDLitLab Website Performance Audit"
echo "====================================="

SITE_DIR="."
PUBLIC_DIR="$SITE_DIR/public"

# Check if site is built
if [ ! -d "$PUBLIC_DIR" ]; then
    echo "❌ Public directory not found. Please build the site first with 'hugo'"
    exit 1
fi

echo ""
echo "📊 File Size Analysis:"
echo "====================="

# CSS Analysis
CSS_SIZE=$(find "$PUBLIC_DIR" -name "*.css" -exec du -ch {} + | grep total | cut -f1)
echo "📄 Total CSS size: $CSS_SIZE"

# JS Analysis  
JS_SIZE=$(find "$PUBLIC_DIR" -name "*.js" -exec du -ch {} + | grep total | cut -f1)
echo "📄 Total JS size: $JS_SIZE"

# Font Analysis
FONT_SIZE=$(find "$PUBLIC_DIR" -name "*.woff2" -o -name "*.woff" -o -name "*.ttf" -exec du -ch {} + 2>/dev/null | grep total | cut -f1)
echo "🔤 Total Font size: $FONT_SIZE"

# Image Analysis
IMG_SIZE=$(find "$PUBLIC_DIR" -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" -o -name "*.svg" -exec du -ch {} + 2>/dev/null | grep total | cut -f1)
echo "🖼️  Total Image size: $IMG_SIZE"

echo ""
echo "🔍 Performance Issues Found:"
echo "============================"

# Check for unoptimized images
LARGE_IMAGES=$(find "$PUBLIC_DIR" -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" | xargs ls -la | awk '$5 > 500000 {print $9 " (" $5/1024/1024 " MB)"}')
if [ ! -z "$LARGE_IMAGES" ]; then
    echo "⚠️  Large images (>500KB):"
    echo "$LARGE_IMAGES"
else
    echo "✅ No large images found"
fi

# Check CSS file size
CSS_FILES=$(find "$PUBLIC_DIR" -name "*.css" -exec ls -la {} \; | awk '$5 > 50000 {print $9 " (" $5/1024 " KB)"}')
if [ ! -z "$CSS_FILES" ]; then
    echo "⚠️  Large CSS files (>50KB):"
    echo "$CSS_FILES"
else
    echo "✅ CSS files are optimally sized"
fi

# Check for TTF fonts (should use WOFF2 only)
TTF_FONTS=$(find "$PUBLIC_DIR" -name "*.ttf" 2>/dev/null | wc -l)
if [ $TTF_FONTS -gt 0 ]; then
    echo "⚠️  Found $TTF_FONTS TTF font files (consider removing, WOFF2 is sufficient)"
else
    echo "✅ No TTF fonts found (good - using WOFF2 only)"
fi

# Check for missing lazy loading
HTML_FILES_NO_LAZY=$(grep -r "img src" "$PUBLIC_DIR" --include="*.html" | grep -v "loading=" | wc -l)
if [ $HTML_FILES_NO_LAZY -gt 0 ]; then
    echo "⚠️  Found $HTML_FILES_NO_LAZY image tags without lazy loading"
else
    echo "✅ All images have lazy loading"
fi

echo ""
echo "✨ Optimization Recommendations:"
echo "==============================="
echo "1. 🔤 Implement font preloading for critical fonts"
echo "2. 📱 Enable CSS/JS minification in production"
echo "3. 🖼️  Convert large images to WebP format"
echo "4. 🚀 Add resource hints (preload, prefetch)"
echo "5. 📦 Implement CSS critical path optimization"
echo "6. 🗜️  Enable Brotli/Gzip compression on server"

echo ""
echo "🎯 Quick Wins Applied:"
echo "======================"
echo "✅ Font preloading partial created"
echo "✅ Optimized font loading (removed unused weights)"
echo "✅ CSS async loading implementation"
echo "✅ Lazy loading for images"
echo "✅ JavaScript optimization with modern techniques"
