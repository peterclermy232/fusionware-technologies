import { Routes } from '@angular/router';
import { HeroComponent } from './sections/hero/hero.component';
import { AboutComponent } from './sections/about/about.component';
import { ServicesComponent } from './sections/services/services.component';
import { PortfolioComponent } from './sections/portfolio/portfolio.component';
import { ContactComponent } from './sections/contact/contact.component';
import { TestimonialComponent } from './sections/testimonial/testimonial.component';
import { InteractivePricingCalculatorComponent } from './sections/interactive-pricing-calculator/interactive-pricing-calculator.component';

export const routes: Routes = [
  { path: 'home', component: HeroComponent, title: 'FusionWare Technologies' },
  { path: 'about', component: AboutComponent, title: 'About — FusionWare' },
  { path: 'services', component: ServicesComponent, title: 'Services — FusionWare' },
  { path: 'portfolio', component: PortfolioComponent, title: 'Portfolio — FusionWare' },
  { path: 'contact', component: ContactComponent, title: 'Contact — FusionWare' },
  { path: 'testimonial', component: TestimonialComponent },
  { path: 'pricing', component: InteractivePricingCalculatorComponent },

  // Default redirect
  { path: '', redirectTo: 'home', pathMatch: 'full' }
];
