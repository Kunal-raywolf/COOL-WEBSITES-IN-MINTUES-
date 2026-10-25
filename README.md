# raywolf desgins — 3D Soda Interactive Experience
█████   ██████  ██    ██  ██████    ██████   ███████  ██████  ██  ██████  ██   ██
██   ██ ██    ██  ██  ██  ██         ██   ██  ██       ██       ██ ██       ███  ██
██████  ████████   ████   ██████    ██   ██  █████    ██████  ██ ██  ████ ██ █ ██
██   ██ ██    ██    ██         ██    ██   ██  ██           ██  ██ ██   ██  ██  ███
██   ██ ██    ██    ██    ██████    ██████   ███████  ██████  ██  ██████  ██   ██

Rays Design is a sleek, production-ready website template built for soda brands, cold drink shops, and beverage ecommerce stores. It combines eye-catching 3D product visuals with a clean, conversion-focused storefront layout.

✨ Features
🥤 Stunning 3D Product Showcase — interactive soda can visuals
🛒 Ecommerce Ready — product grid, cart, and checkout UI
📱 Fully Responsive — looks great on mobile, tablet, and desktop
⚡ Fast & Lightweight — optimized performance
🎨 Modern Design — clean typography and vibrant color palette

![Diet Soda 3D Experience](https://api.getlayers.ai/storage/v1/object/public/public/assets/soda-14ff8a788d/Green%20Soda.png)

---

## 🌟 Key Funtioning details : 

### 1. Interactive 3D Can Hero (`<model-viewer>`)
- **Real-Time Cursor Tilt:** The center 3D soda can (`deit_soda2.glb`) tracks and tilts smoothly towards mouse coordinates with cubic dampening.
- **Physics Pointer Repulsion:** 9 3D floating berries (`cherry.glb` & `blueberry.glb`) react to the cursor within a 400px radius force-field, accelerating and scattering away with natural inertia.
- **Parallax 3D Leaves:** 4 background leaves (`leaves.glb`) bob and drift across depth planes.
- **Procedural Carbonation:** Continuous micro-bubbles rising from the viewport bottom with randomized size, drift, and spin.

### 2. Choreographed Flavor Switcher
- **Dual Flavor Profiles:**
  - **Diet Classic:** Emerald teal palette (`#0b8a78`), key lime & botanical essence.
  - **Zero Lime:** Electric blue palette (`#0b4f8a`), mountain berry & citrus fusion.
- **Can 720° Spin Animation:** Fast spin with motion blur filter, swapping base-color textures at the 360° peak without stutter.
- **Berry Implosion / Model Swap / Explosion:** Berries contract into the center of the can, swap 3D models (`cherry.glb` ↔ `blueberry.glb`), and explode outward to new randomized positions.
- **Shader Warm-Up Pipeline:** Pre-compiles materials on initial load to eliminate runtime compilation hitches.

### 3. Fully Functional Multi-Page Views
- **Home (`#home` / `index.html`):** The signature 3D hero with interactive cards, CTA, and design award emblem.
- **Ingredients (`#ingredients` / `ingredients.html`):** Clean label transparency, artesian water origins, stevia Reb-M purity breakdown, and interactive glassmorphic nutrition panel.
- **Taste Profile (`#taste` / `taste.html`):** Interactive flavor profiler with dynamic sensory radar bars, tasting notes, and food pairings.
- **Eco & Circularity (`#eco` / `eco.html`):** Earth-first sustainability metrics, 100% recyclable aluminum pledge, and closed-loop lifecycle timeline.
- **Reviews (`#reviews` / `reviews.html`):** 4.9/5 star ratings, filter tabs, upvote counters, and a functional **"Write a Review"** modal with instant live posting and celebratory confetti.

### 4. Interactive E-Commerce & Contact Modules
- **Slide-Out Cart Drawer:** Real-time quantity adjustments, pack size switching (12pk, 24pk, 48pk), and working promo codes (`REFRESH10` for 10% off).
- **Simulated 1-Click Checkout:** Secure address & payment card inputs with instant Order Confirmation dialog and confetti animation.
- **Contact Us Modal:** Glassmorphism form with department selector, validation, and feedback state.

---

## 📂 Project Structure

```text
soda-landing/
├── index.html           # Single self-contained application (SPA routing for all views)
├── ingredients.html     # Dedicated standalone Ingredients view
├── taste.html           # Dedicated standalone Taste view
├── eco.html             # Dedicated standalone Eco & Sustainability view
├── reviews.html         # Dedicated standalone Reviews view
├── .gitignore           # Standard git ignore file
└── README.md            # Documentation and setup instructions
```

---

## 🚀 How to Run

### Direct Browser Opening
Double-click `index.html` or run in PowerShell:
```powershell
Start-Process "index.html"
```

### Local Static Server
Serve using any static web server:
```powershell
# Using Node / npx
npx serve .

# Or using Python
python -m http.server 8080
```
Then visit `http://localhost:8080` or `http://localhost:3000`.

---

## 🛠 Tech Stack

- **Markup & Styling:** Semantic HTML5, CSS Variables, Glassmorphism, Responsive Flexbox & Grid
- **Fonts:** `Inter`, `Galada`, `Manrope`, `Outfit` via Google Fonts
- **3D Engine:** Google `<model-viewer>` Web Component (GLTF/GLB)
- **Animation:** GSAP 3.12 (GreenSock Animation Platform)
- **Effects:** Canvas Confetti

---

## 📄 License

MIT License. Designed and developed for **raywolf desgins**.
