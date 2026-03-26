# Workflows — From 3D Model to AI Render

Step-by-step guides for each major 3D software. The goal: extract the best possible base image from your model to feed into AI generation.

**Recommended platform:** Ktirio AI (https://app.ktir.io) — upload your base image, select a model, generate.

---

## Universal principles (all software)

Before diving into software-specific steps, these rules apply everywhere:

### What makes a good base image for AI

1. **Clean geometry is visible** — the AI needs to understand the spatial layout
2. **Correct perspective** — two-point perspective with vertical lines straight
3. **Reasonable composition** — rule of thirds, leading lines, foreground/midground/background
4. **No UI elements** — crop out toolbars, navigation cubes, watermarks
5. **Minimum 1024px on the shortest side** — higher resolution = better AI output
6. **Consistent lighting direction** — even a basic sun study helps the AI understand depth

### What to avoid in base images

- Wireframe or X-ray modes (AI won't interpret them well)
- Extreme wide-angle distortion (fish-eye)
- Cluttered scenes with too many overlapping elements
- Very dark or very bright exposures (aim for balanced histogram)
- Screenshots with OS elements (taskbar, window borders)

### Export settings for best results

| Setting | Recommended |
|---------|-------------|
| Resolution | 1920x1080 minimum, 2K-4K ideal |
| Format | PNG (lossless) or high-quality JPEG (95%+) |
| Aspect ratio | 16:9 (standard) or 3:2 (photo-like) |
| Anti-aliasing | On (smooths edges for better AI interpretation) |
| Background | White or light gray (easier for AI to replace with sky) |

---

## SketchUp

### Setup
1. Set camera to **Perspective** (not Parallel Projection)
2. Field of View: **50-60 degrees** (mimics 35-50mm lens)
3. Turn on **Profiles** and **Extensions** in Styles for edge definition
4. Apply basic materials to all surfaces (even placeholder colors help the AI)

### Export steps
1. Position camera → **Camera > Position Camera** or use orbit
2. Straighten verticals → hold Shift while orbiting, or use **Camera > Two-Point Perspective**
3. Hide UI → **View > Toolbars** (hide all), **View > Hide Navigation**
4. Export → **File > Export > 2D Graphic**
   - Format: PNG
   - Resolution: Set to 3840x2160 or higher
   - Anti-alias: checked
5. For style variations, export multiple views:
   - With textures (best for AI)
   - Monochrome (if you want AI to choose all materials)
   - Hidden line (for a more sketch-like AI input)

### Pro tips
- Use **Scenes** tab to save camera positions → export each as a separate image
- If using SketchUp Free (web), use browser screenshot tools for higher res
- V-Ray/Enscape users: export a quick clay render as base — AI will add materials
- Section cuts can create interesting interior compositions

---

## Revit

### Setup
1. Create a **3D View** or use **Camera** tool for interior shots
2. Set Visual Style to **Realistic** or **Shaded** (not wireframe)
3. Apply materials in Revit (even basic ones improve AI results)
4. Adjust sun position: **Manage > Location > Sun Settings**

### Export steps
1. Set up view → adjust crop region for composition
2. For interiors: **View > Camera** → place camera at ~1.2m height (eye level)
3. Straighten verticals → in camera properties, uncheck "Perspective" distortion corrections
4. Export → **File > Export > Images and Animations > Image**
   - Format: PNG
   - Resolution: Custom → 3840x2160
   - Remove Revit watermark if present
5. Alternative: **Print to PDF** at high DPI, then convert to PNG

### Pro tips
- Use **Graphic Display Options** to control shadows and ambient occlusion
- **Realistic** visual style with sun study gives the best base for AI
- For large buildings, export multiple views: street level, aerial, detail
- **Design Options** can generate variations of the same view quickly

---

## ArchiCAD

### Setup
1. Open **3D Window** or create a **Camera** in floor plan
2. Set **3D Projection Settings**: perspective, ~50mm focal length
3. Apply surfaces/materials to elements
4. Enable **Sun Position** for realistic shadows

### Export steps
1. Navigate to desired view in 3D window
2. Adjust: **3D Window > 3D Projection Settings**
   - Perspective angle: 50-60 degrees
   - Camera height: 1.2m for interiors, 1.5m for exteriors
3. Export → **File > Save as** or **Document > Creative Imaging > PhotoRendering**
   - Use basic internal render for a clean base image
   - Format: PNG, minimum 2K resolution
4. Alternative: **3D > 3D Window Settings > OpenGL** for quick screenshot

### Pro tips
- Use **Rendering Scenes** for different lighting setups
- **Marquee tool** in 3D can isolate specific parts of the model
- Export **Sketch** render style for a different AI input aesthetic
- Use **Curtain Wall** tool screenshots for facade studies

---

## Blender

### Setup
1. Set camera: **Numpad 0** to enter camera view
2. Focal length: 35-50mm for interiors, 50-85mm for exteriors
3. **Properties > Output**: set resolution to 3840x2160
4. Add basic materials (Principled BSDF with albedo colors minimum)
5. Add a Sun light for consistent shadows

### Export steps
1. Position camera → **N panel > View > Camera to View** for interactive framing
2. Straighten verticals → enable **Camera > Shift** instead of rotating
3. Quick render options:
   - **Workbench render** (fast, clean, good for AI base): Render > Render Image
   - **EEVEE preview** (faster than Cycles, decent quality)
   - **Cycles at low samples** (64-128) for better lighting base
4. Save: **Image > Save As** → PNG, RGB, 100% quality

### Pro tips
- **Compositor** can add basic color correction before export
- Use **Collection visibility** to quickly toggle scene elements
- **HDRI lighting** (even basic) gives the AI better shadow/reflection cues
- **Freestyle** edge rendering can create interesting sketch-like bases
- Blender's **Grease Pencil** can annotate views for AI guidance

---

## D5 Render

### Setup
1. Sync model from SketchUp/Revit/ArchiCAD (D5 plugin)
2. Set camera in D5: place and adjust field of view
3. D5 materials are automatically applied if synced correctly
4. Adjust time of day for lighting

### Export steps
1. Position camera using D5's walk-through or camera placement tools
2. For AI base images, use **Low quality** preview render (fast)
3. Export: **Render > Image**
   - Resolution: 3840x2160
   - Format: PNG
4. For variation: export the same angle at different times of day

### Pro tips
- D5's real-time renderer already produces good bases — AI enhances them further
- Export **Material ID** pass as additional reference for AI
- Use D5's **Video** mode to create base frames, then AI-enhance each
- The AI can transform a D5 daytime render into a nighttime scene

---

## After export — Ktirio AI workflow

1. Go to https://app.ktir.io
2. Upload your base image
3. Select AI model:
   - **General archviz** — best for most renders
   - **Interior specialist** — optimized for indoor scenes
   - **Exterior specialist** — optimized for facades and landscapes
4. Write your prompt (use templates from [prompts.md](prompts.md))
5. Generate → review → iterate on prompt if needed
6. Download high-resolution result

### Iteration tips
- If the AI changed your geometry too much → add "maintain original architecture" to prompt
- If materials look wrong → be more specific: "white Carrara marble with gray veining" not just "marble"
- If lighting is flat → specify time of day and light direction in prompt
- Generate 3-5 variations → pick the best, use it as new base for refinement
