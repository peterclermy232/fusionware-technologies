import { Routes } from '@angular/router';
import { HeroComponent } from './sections/hero/hero.component';
import { AboutComponent } from './sections/about/about.component';
import { ServicesComponent } from './sections/services/services.component';
import { PortfolioComponent } from './sections/portfolio/portfolio.component';
import { ContactComponent } from './sections/contact/contact.component';

export const routes: Routes = [
  { path: '', component: HeroComponent, title: 'FusionWare Technologies' },
  { path: 'about', component: AboutComponent, title: 'About — FusionWare' },
  { path: 'services', component: ServicesComponent, title: 'Services — FusionWare' },
  { path: 'portfolio', component: PortfolioComponent, title: 'Portfolio — FusionWare' },
  { path: 'contact', component: ContactComponent, title: 'Contact — FusionWare' },
  { path: '**', redirectTo: '' }
];
