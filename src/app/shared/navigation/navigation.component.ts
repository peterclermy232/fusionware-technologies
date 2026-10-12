import { Component, OnInit, OnDestroy, AfterViewInit, HostListener } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';
import { LogoComponent } from '../logo/logo.component';

interface NavItem {
  label: string;
  path: string;
  elementId: string;
}

@Component({
  selector: 'app-navigation',
  standalone: true,
  imports: [CommonModule, RouterLink, LogoComponent],
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.css']
})
export class NavigationComponent implements OnInit, AfterViewInit, OnDestroy {
  isScrolled = false;
  isMobileMenuOpen = false;
  activeSection = 'home';

  navItems: NavItem[] = [
    { label: 'Home', path: '/', elementId: 'home' },
    { label: 'Services', path: '/services', elementId: 'services' },
    { label: 'Portfolio', path: '/portfolio', elementId: 'portfolio' },
    { label: 'About', path: '/about', elementId: 'about' },
    { label: 'How We Work', path: '/testimonial', elementId: 'testimonial' },
    { label: 'Pricing', path: '/pricing-calculator', elementId: 'pricing-calculator' },
    { label: 'Contact', path: '/contact', elementId: 'contact' }
  ];

  private observer?: IntersectionObserver;

  ngOnInit() {}

  ngAfterViewInit() {
    // Scrollspy: highlight the nav item for whichever section is currently in view.
    const sections = this.navItems
      .map(item => document.getElementById(item.elementId))
      .filter((el): el is HTMLElement => !!el);

    if (typeof IntersectionObserver === 'undefined' || sections.length === 0) {
      return;
    }

    this.observer = new IntersectionObserver(
      entries => {
        const visible = entries
          .filter(entry => entry.isIntersecting)
          .sort((a, b) => b.intersectionRatio - a.intersectionRatio)[0];

        if (visible?.target?.id) {
          this.activeSection = visible.target.id;
        }
      },
      { rootMargin: '-45% 0px -50% 0px', threshold: [0, 0.25, 0.5, 0.75, 1] }
    );

    sections.forEach(section => this.observer!.observe(section));
  }

  ngOnDestroy() {
    this.observer?.disconnect();
  }

  @HostListener('window:scroll', [])
  onWindowScroll() {
    this.isScrolled = window.pageYOffset > 50;
  }

  get navClass(): string {
    return this.isScrolled
      ? 'bg-blue-900 shadow-lg'
      : 'bg-blue-900/95 backdrop-blur-sm shadow-md';
  }

  isActive(elementId: string): boolean {
    return this.activeSection === elementId;
  }

  toggleMobileMenu() {
    this.isMobileMenuOpen = !this.isMobileMenuOpen;
  }

  closeMobileMenu() {
    this.isMobileMenuOpen = false;
  }
}
