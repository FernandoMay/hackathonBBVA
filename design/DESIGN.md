---
name: Agro-Intelligence System
colors:
  surface: '#f8faf3'
  surface-dim: '#d9dbd4'
  surface-bright: '#f8faf3'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f2f4ed'
  surface-container: '#edefe8'
  surface-container-high: '#e7e9e2'
  surface-container-highest: '#e1e3dc'
  on-surface: '#191c18'
  on-surface-variant: '#40493d'
  inverse-surface: '#2e312d'
  inverse-on-surface: '#eff2eb'
  outline: '#707a6c'
  outline-variant: '#bfcaba'
  surface-tint: '#1b6d24'
  primary: '#0d631b'
  on-primary: '#ffffff'
  primary-container: '#2e7d32'
  on-primary-container: '#cbffc2'
  inverse-primary: '#88d982'
  secondary: '#7a5649'
  on-secondary: '#ffffff'
  secondary-container: '#fdcdbc'
  on-secondary-container: '#795548'
  tertiary: '#005a8c'
  on-tertiary: '#ffffff'
  tertiary-container: '#0073b2'
  on-tertiary-container: '#e9f2ff'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#a3f69c'
  primary-fixed-dim: '#88d982'
  on-primary-fixed: '#002204'
  on-primary-fixed-variant: '#005312'
  secondary-fixed: '#ffdbcf'
  secondary-fixed-dim: '#ebbcac'
  on-secondary-fixed: '#2e150b'
  on-secondary-fixed-variant: '#603f33'
  tertiary-fixed: '#cee5ff'
  tertiary-fixed-dim: '#96ccff'
  on-tertiary-fixed: '#001d32'
  on-tertiary-fixed-variant: '#004a75'
  background: '#f8faf3'
  on-background: '#191c18'
  surface-variant: '#e1e3dc'
typography:
  display-lg:
    fontFamily: Inter
    fontSize: 57px
    fontWeight: '700'
    lineHeight: 64px
    letterSpacing: -0.25px
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '600'
    lineHeight: 40px
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
  title-lg:
    fontFamily: Inter
    fontSize: 22px
    fontWeight: '500'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
    letterSpacing: 0.5px
  body-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
    letterSpacing: 0.25px
  label-lg:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '500'
    lineHeight: 20px
    letterSpacing: 0.1px
  label-md:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
    letterSpacing: 0.5px
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  margin-mobile: 16px
  margin-desktop: 64px
  gutter: 16px
---

## Brand & Style
The design system focuses on a **Modern Corporate** aesthetic with a strong **Agricultural** soul. It is engineered for high-utility usage in varying field conditions, prioritizing legibility and reliability. The visual language balances the precision of data-driven technology with the organic warmth of the Mexican landscape.

The target audience consists of agricultural producers and field technicians. Consequently, the UI must evoke a sense of **stability, precision, and growth**. The style is rooted in Material 3 principles, utilizing clear containment, intentional color application, and a functional hierarchy that ensures the product remains usable under direct sunlight.

## Colors
The palette is inspired by the lifecycle of maize and the natural elements of the farm.
- **Primary (Forest Green):** Represents vitality and the mature crop. Used for key actions and primary branding elements.
- **Secondary (Earth Brown):** Grounding the interface, used for secondary actions and structural elements that require a softer touch than black.
- **Tertiary (Sky Blue):** Used for weather-related data, irrigation updates, and informational callouts.
- **Neutral (Field White):** A slightly warm off-white background reduces eye strain outdoors compared to pure white.

Contrast ratios must strictly adhere to WCAG AA standards to ensure readability for farmers operating devices in high-glare environments.

## Typography
This design system utilizes **Inter** for all roles due to its exceptional x-height and legibility at small sizes. 
- **Headlines:** Use Semi-Bold weight to establish a clear hierarchy and provide a robust, "heavy-duty" feel.
- **Body Text:** Standardized at 16px for primary reading to ensure accessibility for older users.
- **Labels:** Used for data points (soil pH, moisture levels, etc.), utilizing medium weights to differentiate values from descriptions.
- **Mobile Scaling:** Large headlines scale down on mobile to prevent awkward line breaks while maintaining a strong visual anchor.

## Layout & Spacing
The layout follows a **fluid grid** model based on an 8px spacing rhythm. 
- **Mobile:** 4-column grid with 16px side margins. Elements often span the full width to maximize touch targets.
- **Desktop:** 12-column grid with a maximum content width of 1280px. 
- **Touch Targets:** Minimum touch target size is 48x48px for all interactive elements to accommodate users who may be wearing gloves or have less precise motor control in field settings.

## Elevation & Depth
In alignment with Material 3, elevation is primarily conveyed through **tonal layers** and subtle **ambient shadows**. 
- **Surface Level 0:** The main background color (Field White).
- **Surface Level 1:** Used for cards and containers. These use a very soft shadow (4px blur, 10% opacity) and a subtle 1px border in a slightly darker neutral shade to maintain definition.
- **Interactive Elements:** Buttons and active states use "Surface Level 2", appearing slightly more elevated to invite interaction.
- **Overlays:** Modals and bottom sheets use a high-diffused shadow to provide clear separation from the background.

## Shapes
The shape language is **Rounded**, reflecting an organic and friendly personality. 
- **Small components (Chips, Inputs):** 8px corner radius.
- **Medium components (Buttons, Cards):** 16px corner radius.
- **Large components (Bottom Sheets, Modal containers):** 24px corner radius.
The use of rounded corners softens the technical nature of the data and makes the app feel more approachable and modern.

## Components
- **Buttons:** Filled buttons use the Primary Green with white text for high prominence. Outlined buttons use the Secondary Brown for less critical actions.
- **Cards:** Cards are the primary container for field data (e.g., "Parcel Alpha Status"). They feature a 1px stroke in a light neutral color and a subtle shadow.
- **Chips:** Used for filtering crop types or status (e.g., "In Progress," "Irrigation Needed"). Use "Surface Variant" backgrounds.
- **Input Fields:** Outlined style with a 1px border. On focus, the border thickens to 2px and changes to Primary Green. Labels must remain visible at all times.
- **Lists:** High-density lists for inventory or parcel management, using 16px vertical padding and horizontal dividers to ensure clear separation.
- **Data Visualizations:** Charts should use Primary Green for positive growth and Sky Blue for water/atmospheric data. Avoid thin lines; use 2px or 3px stroke widths for better visibility.