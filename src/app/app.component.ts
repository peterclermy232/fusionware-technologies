import { Component, OnInit, OnDestroy } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router, RouterOutlet, NavigationEnd } from '@angular/router';
import { Subscription } from 'rxjs';
import { filter } from 'rxjs/operators';

// Import all the components
import { NavigationComponent } from './shared/navigation/navigation.component';
import { HeroComponent } from './sections/hero/hero.component';
import { ServicesComponent } from './sections/services/services.component';
import { PortfolioComponent } from './sections/portfolio/portfolio.component';
import { AboutComponent } from './sections/about/about.component';
import { ContactComponent } from './sections/contact/contact.component';
import { FooterComponent } from './shared/footer/footer.component';
import { TestimonialComponent } from './sections/testimonial/testimonial.component';
import { InteractivePricingCalculatorComponent } from './sections/interactive-pricing-calculator/interactive-pricing-calculator.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [
    CommonModule,
    RouterOutlet,
    NavigationComponent,
    HeroComponent,
    ServicesComponent,
    PortfolioComponent,
    AboutComponent,
    ContactComponent,
    FooterComponent,
    TestimonialComponent,
    InteractivePricingCalculatorComponent
  ],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent implements OnInit, OnDestroy {
  title = 'fusionware-technologies';

  private routerSubscription?: Subscription;

  constructor(private router: Router) {}

  ngOnInit() {
    // Every section lives on this one page — routing to /services,
    // /pricing-calculator, etc. gives each a real, shareable URL; here we
    // translate that navigation into a smooth-scroll to the matching section.
    this.routerSubscription = this.router.events
      .pipe(filter((event): event is NavigationEnd => event instanceof NavigationEnd))
      .subscribe(event => {
        const path = event.urlAfterRedirects.split(/[?#]/)[0].replace(/^\//, '');
        const elementId = path || 'home';
        setTimeout(() => {
          document.getElementById(elementId)?.scrollIntoView({ behavior: 'smooth' });
        });
      });
  }

  ngOnDestroy() {
    this.routerSubscription?.unsubscribe();
  }
}
