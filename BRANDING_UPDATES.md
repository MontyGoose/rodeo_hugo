# RodeoCat Branding Updates

## Brand Colors Applied
- **Primary Blue**: `#215179` - Used for navigation, primary links, buttons
- **Accent Teal**: `#18A59F` - Used for hover states, highlights, avatar border
- **Dark Gray**: `#3d4449` - Used for text and secondary elements

## Files Modified

### 1. `config.toml`
- Added `logo = "img/logo.jpg"` parameter to display logo in navigation

### 2. `static/css/main.css`
- Added CSS custom properties (variables) for brand colors
- Applied brand colors to:
  - Links and hover states
  - Navigation bar
  - Buttons
  - Tags
  - Sidebar elements
  - Post metadata
  - Archive pages
  - Pagination
  - Featured tags
  - Avatar border (teal accent)

### 3. `layouts/partials/nav.html` (NEW)
- Created custom navigation partial to override theme default
- Added logo display next to site title in navbar
- Logo automatically scales to 40px height

## Logo Location
Your logo is located at: `static/img/logo.jpg`

## Testing Your Changes

1. Start the Hugo development server:
   ```bash
   hugo server -D
   ```

2. Visit `http://localhost:1313/` to see your changes

3. Check these elements for brand colors:
   - Navigation bar (should be blue #215179)
   - Logo in top-left corner
   - Links (blue, turn teal on hover)
   - Tags and buttons
   - Sidebar avatar border (teal)

## Further Customization

If you want to adjust any colors, edit the CSS variables in `static/css/main.css`:

```css
:root {
  --brand-blue: #215179;
  --brand-teal: #18A59F;
  --brand-dark: #3d4449;
}
```

All branded elements will automatically update when you change these values.
