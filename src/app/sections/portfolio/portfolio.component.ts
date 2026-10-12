import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';

export interface Project {
  title: string;
  description: string;
  // SVG path (20x20 viewBox) shown when no screenshot is available
  icon: string;
  technologies: string[];
  // Screenshot path, e.g. 'portfolio/sacco-dashboard.png' (place files in public/portfolio/).
  // Blur or crop out client names and personal data before publishing.
  image?: string;
  // Who it was for, e.g. 'Teachers' SACCO, Western Kenya' — keep anonymous if the client prefers.
  client?: string;
  // Short case-study lines. Only include outcomes you can back up.
  challenge?: string;
  outcome?: string;
}

@Component({
  selector: 'app-portfolio',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './portfolio.component.html',
  styleUrls: ['./portfolio.component.css']
})
export class PortfolioComponent implements OnInit {

  portfolio: Project[] = [
    {
      title: 'SACCO Management System',
      description: 'Complete digital platform for savings and credit cooperative societies with member management, loan processing, and financial reporting.',
      icon: 'M10.496 2.132a1 1 0 00-.992 0l-7 4A1 1 0 003 8v7a1 1 0 100 2h14a1 1 0 100-2V8a1 1 0 00.496-1.868l-7-4zM6 9a1 1 0 00-1 1v3a1 1 0 102 0v-3a1 1 0 00-1-1zm3 1a1 1 0 012 0v3a1 1 0 11-2 0v-3zm5-1a1 1 0 00-1 1v3a1 1 0 102 0v-3a1 1 0 00-1-1z',
      technologies: ['Angular', 'Spring Boot', 'PostgreSQL', 'JWT']
    },
    {
      title: 'E-Commerce Platform',
      description: 'Modern online shopping platform with payment integration, inventory management, and real-time analytics dashboard.',
      icon: 'M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z',
      technologies: ['React', 'Node.js', 'MongoDB', 'Stripe']
    },
    {
      title: 'Mobile Banking App',
      description: 'Secure mobile banking solution with biometric authentication, transaction history, and bill payment features.',
      icon: 'M7 2a2 2 0 00-2 2v12a2 2 0 002 2h6a2 2 0 002-2V4a2 2 0 00-2-2H7zm3 14a1 1 0 100-2 1 1 0 000 2z',
      technologies: ['Flutter', 'Firebase', 'REST API', 'Biometrics']
    },
    {
      title: 'School Management System',
      description: 'Comprehensive education management platform handling student records, fee management, and academic reporting.',
      icon: 'M10.394 2.08a1 1 0 00-.788 0l-7 3a1 1 0 000 1.84L5.25 8.051a.999.999 0 01.356-.257l4-1.714a1 1 0 11.788 1.838L7.667 9.088l1.94.831a1 1 0 00.787 0l7-3a1 1 0 000-1.838l-7-3zM3.31 9.397L5 10.12v4.102a8.969 8.969 0 00-1.05-.174 1 1 0 01-.89-.89 11.115 11.115 0 01.25-3.762zM9.3 16.573A9.026 9.026 0 007 14.935v-3.957l1.818.78a3 3 0 002.364 0l5.508-2.361a11.026 11.026 0 01.25 3.762 1 1 0 01-.89.89 8.968 8.968 0 00-5.35 2.524 1 1 0 01-1.4 0zM6 18a1 1 0 001-1v-2.065a8.935 8.935 0 00-2-.712V17a1 1 0 001 1z',
      technologies: ['Angular', 'Java', 'MySQL', 'PDF Generation']
    }
  ];

  ngOnInit() {}
}
