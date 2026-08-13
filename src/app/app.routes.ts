import { Routes } from '@angular/router';
import { RouteAnchorComponent } from './shared/route-anchor/route-anchor.component';

// The site is a single scrolling landing page (see app.component.html).
// These routes exist purely to give each section a clean, shareable URL
// (e.g. /pricing-calculator) and set the document title — every route
// resolves to RouteAnchorComponent, which renders nothing itself.
// AppComponent listens for NavigationEnd and smooth-scrolls to the
// section whose id matches the current path.
export const routes: Routes = [
  { path: '', pathMatch: 'full', component: RouteAnchorComponent, title: 'FusionWare Technologies — Custom Software, Fintech & Web Solutions' },
  { path: 'home', redirectTo: '', pathMatch: 'full' },
  { path: 'services', component: RouteAnchorComponent, title: 'Services — FusionWare Technologies' },
  { path: 'portfolio', component: RouteAnchorComponent, title: 'Portfolio — FusionWare Technologies' },
  { path: 'about', component: RouteAnchorComponent, title: 'About — FusionWare Technologies' },
  { path: 'testimonial', component: RouteAnchorComponent, title: 'Testimonials — FusionWare Technologies' },
  { path: 'pricing-calculator', component: RouteAnchorComponent, title: 'Pricing Calculator — FusionWare Technologies' },
  { path: 'pricing', redirectTo: 'pricing-calculator', pathMatch: 'full' },
  { path: 'contact', component: RouteAnchorComponent, title: 'Contact — FusionWare Technologies' },
  { path: '**', redirectTo: '' }
];
