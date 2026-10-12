import { Component, OnInit,OnDestroy } from '@angular/core';
import { CommonModule } from '@angular/common';

interface Testimonial {
  id: number;
  name: string;
  company: string;
  position: string;
  image: string;
  rating: number;
  text: string;
  project: string;
  result: string;
  location: string;
}

@Component({
  selector: 'app-testimonial',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './testimonial.component.html',
  styleUrl: './testimonial.component.css'
})
export class TestimonialComponent implements OnInit, OnDestroy {

  // Only add testimonials from real clients who have agreed to be quoted,
  // and only include results you can back up. While this list is empty the
  // section shows "How We Work" instead of the carousel.
  testimonials: Testimonial[] = [];

  processSteps = [
    {
      title: 'Free Consultation',
      description: 'We learn about your business, the problem you want solved, and what success looks like for you.'
    },
    {
      title: 'Fixed-Price Proposal',
      description: 'You get a clear scope, timeline and price in writing before any work starts. No surprises later.'
    },
    {
      title: 'Build & Review',
      description: 'We build in short cycles and show you working software regularly, so you can give feedback early.'
    },
    {
      title: 'Launch & Support',
      description: 'We deploy, train your team, hand over the source code, and stay on hand for updates and fixes.'
    }
  ];

  commitments = [
    'Written scope and fixed price before we start',
    'Regular demos of working software',
    'You own the source code and data',
    'Mobile money (M-Pesa, Airtel Money) integration experience',
    'Local team you can call or WhatsApp directly'
  ];

  testimonialSlides: Testimonial[][] = [];
  currentSlide: number = 0;
  slideInterval: any;
  private readonly SLIDE_INTERVAL = 10000; // 10 seconds

  ngOnInit() {
    this.createSlides();
    if (this.testimonialSlides.length > 1) {
      this.startAutoSlide();
    }
  }

  ngOnDestroy() {
    this.clearAutoSlide();
  }

  createSlides() {
    // Group testimonials into slides of 3
    this.testimonialSlides = [];
    for (let i = 0; i < this.testimonials.length; i += 3) {
      this.testimonialSlides.push(this.testimonials.slice(i, i + 3));
    }
  }

  startAutoSlide() {
    this.slideInterval = setInterval(() => {
      this.nextSlide();
    }, this.SLIDE_INTERVAL);
  }

  clearAutoSlide() {
    if (this.slideInterval) {
      clearInterval(this.slideInterval);
    }
  }

  nextSlide() {
    this.currentSlide = (this.currentSlide + 1) % this.testimonialSlides.length;
  }

  previousSlide() {
    this.currentSlide = this.currentSlide === 0
      ? this.testimonialSlides.length - 1
      : this.currentSlide - 1;
  }

  goToSlide(slideIndex: number) {
    this.currentSlide = slideIndex;
    // Reset the auto-slide timer when user manually navigates
    this.clearAutoSlide();
    this.startAutoSlide();
  }

  getStars(rating: number): number[] {
    return Array(rating).fill(0);
  }

  // Pause auto-slide on hover (optional)
  onMouseEnter() {
    this.clearAutoSlide();
  }

  onMouseLeave() {
    if (this.testimonialSlides.length > 1) {
      this.startAutoSlide();
    }
  }
}
