import { Component, OnInit } from '@angular/core';

export interface Project {
  title: string;
  description: string;
  icon: string;
  technologies: string[];
}

@Component({
  selector: 'app-portfolio',
  templateUrl: './portfolio.component.html',
  styleUrls: ['./portfolio.component.css']
})
export class PortfolioComponent implements OnInit {

  portfolio: Project[] = [
    {
      title: 'SACCO Management System',
      description: 'Complete digital platform for savings and credit cooperative societies with member management, loan processing, and financial reporting.',
      icon: '🏦',
      technologies: ['Angular', 'Spring Boot', 'PostgreSQL', 'JWT']
    },
    {
      title: 'E-Commerce Platform',
      description: 'Modern online shopping platform with payment integration, inventory management, and real-time analytics dashboard.',
      icon: '🛒',
      technologies: ['React', 'Node.js', 'MongoDB', 'Stripe']
    },
    {
      title: 'Mobile Banking App',
      description: 'Secure mobile banking solution with biometric authentication, transaction history, and bill payment features.',
      icon: '📱',
      technologies: ['Flutter', 'Firebase', 'REST API', 'Biometrics']
    },
    {
      title: 'School Management System',
      description: 'Comprehensive education management platform handling student records, fee management, and academic reporting.',
      icon: '🎓',
      technologies: ['Angular', 'Java', 'MySQL', 'PDF Generation']
    }
  ];

  ngOnInit() {}
}
