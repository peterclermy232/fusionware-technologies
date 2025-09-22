import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { CommonModule } from '@angular/common';

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
    // HeroComponent,
    // ServicesComponent,
    // PortfolioComponent,
    // AboutComponent,
    // ContactComponent,
     FooterComponent,
    // TestimonialComponent,
    // InteractivePricingCalculatorComponent
  ],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'fusionware-technologies';
}
