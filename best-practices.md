# Best Practices — Image Preparation for AI Archviz

How to prepare base images that produce the best possible AI-generated architectural renders.

---

## Composition

### Rule of thirds
Place key architectural elements (entrance, focal wall, main window) at intersection points of a 3x3 grid. AI models respond well to balanced compositions — they enhance rather than fight the original framing.

### Leading lines
Use architectural elements to guide the eye:
- Floor patterns → vanishing point
- Ceiling beams → focal wall
- Corridors → destination space
- Staircase railings → upper levels

### Foreground, midground, background
A strong base image has depth layers:
- **Foreground**: furniture edge, plant, railing (creates depth)
- **Midground**: main architectural subject
- **Background**: view through window, distant wall, sky

AI renders improve dramatically when the base image has clear spatial depth.

### Vertical lines
**Keep verticals straight.** Tilted buildings look like errors, not style. Use two-point perspective in your 3D software. If your export has converging verticals, correct in image editing before uploading to AI.

### Aspect ratios by use case

| Use case | Ratio | Resolution |
|----------|-------|------------|
| Instagram post | 1:1 | 2048x2048 |
| Instagram story / Reels | 9:16 | 1080x1920 |
| Website hero | 16:9 | 3840x2160 |
| Print portfolio | 3:2 | 4000x2667 |
| Real estate listing | 4:3 | 2400x1800 |
| Presentation slide | 16:9 | 1920x1080 |

---

## Camera angles

### Interiors

| Angle | Height | Focal length | Best for |
|-------|--------|-------------|----------|
| Eye-level | 1.1-1.3m | 24-35mm | Living rooms, bedrooms — feels natural |
| Seated | 0.8-1.0m | 35mm | Kitchens (from dining position), bathrooms |
| Low angle | 0.4-0.6m | 24mm | Dramatic spaces, tall ceilings, lofts |
| Overhead | 2.5m+ | 35mm | Floor plans, furniture layouts |
| Corner-to-corner | 1.2m | 24mm | Maximum space perception, diagonal depth |

**Key rule for interiors:** Camera at corner, looking diagonally across the room. This maximizes visible area and creates the deepest perspective.

### Exteriors

| Angle | Position | Focal length | Best for |
|-------|----------|-------------|----------|
| Street-level | 1.5m, across street | 50-85mm | Facades, residential |
| 3/4 elevated | 5-10m height, 45° | 35-50mm | Buildings showing two facades |
| Drone perspective | 20-50m | 35mm | Site context, roof design |
| Ground-up | 1m, close to building | 24mm | Dramatic, imposing feel |
| Detail | varies | 85-135mm | Material close-ups, entries |

**Key rule for exteriors:** Include ground plane and sky. A building floating in white space gives the AI nothing to work with for environment.

---

## Lighting

Lighting is the single most important factor in AI render quality. The base image's lighting direction tells the AI where shadows and highlights should fall.

### Best lighting conditions for base images

| Condition | When to use | Effect on AI output |
|-----------|-------------|-------------------|
| **Golden hour** (low sun, warm) | Exterior facades, pools, gardens | Most photorealistic results, warm atmosphere |
| **Overcast** (diffused, no shadows) | Interiors, material-focused renders | Even lighting, true colors, less dramatic |
| **Blue hour** (twilight, cool) | Evening scenes, restaurants, hotels | Dramatic, interior lights glow warm against cool exterior |
| **Direct sun** (high contrast) | Mediterranean, tropical, desert | Strong shadows, vivid colors, high energy |
| **North-facing light** (soft, consistent) | Studios, galleries, minimalist spaces | Soft, even, professional |

### Lighting mistakes to avoid

- **No light source visible or implied** → AI generates flat, artificial-looking renders
- **Multiple conflicting shadow directions** → confuses the AI, inconsistent result
- **Completely black shadows** → lose detail, AI fills with noise
- **Blown-out windows** → AI can't distinguish interior from exterior

### Interior lighting setup for base images

Even with basic 3D software lighting:
1. Place a directional light (sun) coming from the main window direction
2. Add soft ambient light at 20-30% intensity for shadow fill
3. If the scene has artificial lights (pendants, floor lamps), turn them on — the AI will enhance them

---

## Materials in base images

### Why materials matter for AI

The AI reads your base image's materials as intent signals. A white wall stays white. A brown surface becomes wood. A reflective surface gets glass or polished treatment. If all surfaces are the same color, the AI guesses — and guesses wrong.

### Minimum material setup

Even placeholder materials dramatically improve AI output:

| Surface | Minimum | Better |
|---------|---------|--------|
| Walls | White/off-white | Actual plaster texture |
| Floor | Brown for wood, gray for concrete | Material with grain visible |
| Ceiling | White | Same as walls |
| Glass | Transparent with slight reflection | Blue-tinted transparency |
| Metal | Gray, slightly reflective | Chrome or matte metal material |
| Vegetation | Green | Actual plant textures |

### Material description in prompts

When you want the AI to change materials, be specific:

**Vague (bad):** "wooden floor"
**Specific (good):** "wide-plank European oak flooring in a warm honey tone with visible grain and matte finish"

**Vague (bad):** "marble countertop"
**Specific (good):** "honed Carrara marble countertop with subtle gray veining, 40mm edge profile"

See [glossary.md](glossary.md) for complete material vocabulary.

---

## Common mistakes and fixes

| Mistake | Problem | Fix |
|---------|---------|-----|
| Screenshot includes toolbar | AI renders toolbar as part of the scene | Crop or use export function |
| White background (no sky) | AI generates bland sky or ignores it | Add gradient sky or set sky color in 3D |
| Too many objects | AI gets confused, loses architectural focus | Simplify scene, remove clutter |
| Fish-eye distortion | AI amplifies distortion, looks unnatural | Use 35-50mm focal length, not ultra-wide |
| Very dark image | AI adds noise, materials look muddy | Increase exposure before export |
| Model visible from inside-out | Floating walls, missing floors | Close your 3D model geometry |
| Low resolution | AI upscales poorly, loses detail | Export at minimum 1920px wide |
| Multiple buildings in one shot | AI might merge them or lose focus | Frame one building clearly, others as context |

---

## Image preparation checklist

Before uploading to Ktirio AI (https://app.ktir.io), check:

- [ ] Resolution is 1920px+ on shortest side
- [ ] Vertical lines are straight (no converging buildings)
- [ ] No UI elements, toolbars, or watermarks visible
- [ ] Clear composition with foreground/midground/background
- [ ] Lighting direction is consistent and visible
- [ ] Basic materials applied (not all surfaces the same color)
- [ ] Image is PNG or high-quality JPEG
- [ ] Subject is clearly an architectural space (not abstract geometry)
