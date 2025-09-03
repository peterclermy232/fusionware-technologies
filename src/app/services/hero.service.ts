import { Injectable } from '@angular/core';
import { Observable, of } from 'rxjs';

export interface HeroContent {
  title: {
    main: string;
    highlight: string;
    subtitle: string;
  };
  description: string;
  buttons: {
    text: string;
    action: string;
    primary: boolean;
  }[];
  stats?: {
    value: string;
    label: string;
  }[];
}

@Injectable({
  providedIn: 'root'
})
export class HeroService {
  private heroContent: HeroContent = {
    title: {
      main: 'We Build',
      highlight: 'Scalable Software',
      subtitle: 'for Growth'
    },
    description: 'Empowering African businesses with innovative web applications, fintech solutions, and custom software that drives digital transformation.',
    buttons: [
      {
        text: 'Start Your Project',
        action: 'contact',
        primary: true
      },
      {
        text: 'View Our Work',
        action: 'portfolio',
        primary: false
      }
    ],
    stats: [
      { value: '50+', label: 'Projects Completed' },
      { value: '100%', label: 'Client Satisfaction' },
      { value: '24/7', label: 'Support Available' }
    ]
  };

  constructor() { }

  getHeroContent(): Observable<HeroContent> {
    return of(this.heroContent);
  }

  updateHeroContent(content: Partial<HeroContent>): void {
    this.heroContent = { ...this.heroContent, ...content };
  }
}
