import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule } from '@angular/router';

@Component({
  selector: 'app-footer',
  standalone: true,
  imports: [CommonModule, RouterModule],
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent implements OnInit {
  currentYear = new Date().getFullYear();

  quickLinks = [
    { label: 'Home', link: '/home' },
  { label: 'About', link: '/about' },
  { label: 'Services', link: '/services' },
  { label: 'Portfolio', link: '/portfolio' },
  { label: 'Contact', link: '/contact' },
  { label: 'Testimonial', link: '/testimonial' },
  { label: 'Pricing', link: '/pricing' }
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
