# FusionWare Technologies

The marketing website for **FusionWare Technologies** — a software studio building web applications, fintech/SACCO systems, and custom business software for companies across Kenya, Uganda, and Tanzania.

Built with Angular 19 (standalone components) and Tailwind CSS.

## What's on the site

The app is a single scrolling landing page (`src/app/app.component.html`) made up of independent, reusable sections:

| Section | Component | Purpose |
|---|---|---|
| Hero | `sections/hero` | Value proposition, social proof, primary CTAs |
| Services | `sections/services` | Web, fintech/SACCO, custom software & support offerings |
| Portfolio | `sections/portfolio` | Showcase of past projects |
| About | `sections/about` | Mission, vision, values |
| Testimonials | `sections/testimonial` | Auto-advancing client testimonial carousel |
| Pricing Calculator | `sections/interactive-pricing-calculator` | Interactive quote builder that sends the estimate straight to WhatsApp |
| Contact | `sections/contact` | Reactive contact form + business details |

Navigation (`shared/navigation`) is a fixed header with smooth-scroll anchor links and a scrollspy that highlights the section currently in view. `shared/footer` mirrors the same anchors.

## Development server

```bash
npm install
ng serve
```

Open `http://localhost:4200/` — the app reloads automatically as you edit source files.

## Building

```bash
ng build
```

Production output is written to `dist/`.

## Running unit tests

```bash
ng test
```

## Project conventions

- Components are standalone (no `NgModule`), styled with Tailwind utility classes plus a small amount of component-scoped CSS for bespoke animations (logo, nav, calculator).
- Section components currently hold their content as static in-component data. The `services/*.service.ts` files sketch out a future API-backed data layer (services, portfolio, about, contact) with mock fallbacks — wire a real backend into them when one exists.
- Since everything lives on one page, prefer `href="#section-id"` anchors over Angular `routerLink` for in-page navigation; `app.routes.ts` only exists to redirect legacy deep links (e.g. `/about`, `/contact`) back to the corresponding anchor.

## Additional resources

- [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
