import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-footer',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {
  currentYear = new Date().getFullYear();

  quickLinks = [
    { label: 'Home', path: '/' },
    { label: 'Services', path: '/services' },
    { label: 'Portfolio', path: '/portfolio' },
    { label: 'About', path: '/about' },
    { label: 'Testimonials', path: '/testimonial' },
    { label: 'Pricing', path: '/pricing-calculator' },
    { label: 'Contact', path: '/contact' }
  ];


  services = [
    'Web Development',
    'Backend Systems',
    'Fintech Solutions',
    'Custom Software',
    'Mobile Applications'
  ];

  ngOnInit() {}
}
