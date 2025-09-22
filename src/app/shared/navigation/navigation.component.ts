import { Component, OnInit, HostListener } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LogoComponent } from '../logo/logo.component';
import { RouterModule } from '@angular/router';

@Component({
  selector: 'app-navigation',
  standalone: true,
  imports: [CommonModule, RouterModule, LogoComponent],
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.css']
})
export class NavigationComponent implements OnInit {
  isScrolled = false;
  isMobileMenuOpen = false;

  navItems = [
  { label: 'Home', link: '/home' },
  { label: 'About', link: '/about' },
  { label: 'Services', link: '/services' },
  { label: 'Portfolio', link: '/portfolio' },
  { label: 'Contact', link: '/contact' },
  { label: 'Testimonial', link: '/testimonial' },
  { label: 'Pricing', link: '/pricing' }
];

  ngOnInit() {}

  @HostListener('window:scroll', [])
  onWindowScroll() {
    this.isScrolled = window.pageYOffset > 50;
  }

  // get navClass(): string {
  //   return this.isScrolled
  //     ? 'bg-blue-900 bg-opacity-95 backdrop-blur-sm shadow-lg'
  //     : 'bg-transparent';
  // }
  get navClass(): string {
  return 'bg-blue-900 shadow-lg'; // always blue with shadow
}

  toggleMobileMenu() {
    this.isMobileMenuOpen = !this.isMobileMenuOpen;
  }

  closeMobileMenu() {
    this.isMobileMenuOpen = false;
  }
}
