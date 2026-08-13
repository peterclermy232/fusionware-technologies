import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';

export interface AboutContent {
  mission: string;
  vision: string;
  values: string[];
  highlights: {
    title: string;
    description: string;
  }[];
}

@Injectable({
  providedIn: 'root'
})
export class AboutService {
  private aboutContent: AboutContent = {
    mission: 'To empower businesses across Africa and beyond with innovative, scalable software solutions that drive growth and digital transformation.',
    vision: 'To be the leading software development company that bridges the gap between cutting-edge technology and business success in emerging markets.',
    values: [
      'Innovation & Excellence',
      'Client-Centric Approach',
      'Integrity & Transparency',
      'Continuous Learning'
    ],
    highlights: [
      { title: 'Proven Expertise', description: 'Years of experience in delivering successful projects' },
      { title: 'Dedicated Support', description: '24/7 support and maintenance for all our solutions' },
      { title: 'Scalable Solutions', description: 'Future-ready applications that grow with your business' }
    ]
  };

  getAboutContent(): Observable<AboutContent> {
    return of(this.aboutContent);
  }
}
