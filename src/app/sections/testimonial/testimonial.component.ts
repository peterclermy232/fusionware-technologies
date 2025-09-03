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

  testimonials: Testimonial[] = [
    {
      id: 1,
      name: "Sarah Wanjiku",
      company: "Nairobi Fashion House",
      position: "CEO & Founder",
      image: "",
      rating: 5,
      text: "FusionWare transformed our business completely. Our new e-commerce platform increased online sales by 400% in just 3 months. The team understood our vision perfectly.",
      project: "E-commerce Platform",
      result: "400% increase in online sales",
      location: "Nairobi, Kenya"
    },
    {
      id: 2,
      name: "James Ochieng",
      company: "Kisumu Teachers SACCO",
      position: "General Manager",
      image: "",
      rating: 5,
      text: "The SACCO management system they built for us has revolutionized our operations. Member satisfaction is at an all-time high, and we've reduced processing time by 80%.",
      project: "SACCO Management System",
      result: "80% faster loan processing",
      location: "Kisumu, Kenya"
    },
    {
      id: 3,
      name: "Grace Nakimuli",
      company: "Kampala Fresh Produce",
      position: "Operations Director",
      image: "",
      rating: 5,
      text: "Their inventory management system saved us from bankruptcy. We can now track everything in real-time and have reduced waste by 60%. Amazing team to work with!",
      project: "Inventory Management System",
      result: "60% reduction in waste",
      location: "Kampala, Uganda"
    },
    {
      id: 4,
      name: "Dr. Michael Mwangi",
      company: "Mwangi Medical Center",
      position: "Medical Director",
      image: "",
      rating: 5,
      text: "The patient management system is incredible. We've improved patient care quality and reduced waiting times by 70%. Our staff loves how easy it is to use.",
      project: "Patient Management System",
      result: "70% reduced waiting times",
      location: "Mombasa, Kenya"
    },
    {
      id: 5,
      name: "Ruth Mwende",
      company: "Machakos Agribusiness",
      position: "Managing Partner",
      image: "",
      rating: 5,
      text: "FusionWare built us a comprehensive business management platform that handles everything from procurement to sales. Our efficiency has increased by 250%.",
      project: "Business Management Platform",
      result: "250% efficiency increase",
      location: "Machakos, Kenya"
    },
    {
      id: 6,
      name: "Anthony Kiprotich",
      company: "Eldoret Transport Solutions",
      position: "Fleet Manager",
      image: "",
      rating: 5,
      text: "The fleet management system they developed helps us track all our vehicles in real-time. We've reduced fuel costs by 40% and improved delivery times significantly.",
      project: "Fleet Management System",
      result: "40% fuel cost reduction",
      location: "Eldoret, Kenya"
    }
  ];

  testimonialSlides: Testimonial[][] = [];
  currentSlide: number = 0;
  slideInterval: any;
  private readonly SLIDE_INTERVAL = 10000; // 10 seconds

  ngOnInit() {
    this.createSlides();
    this.startAutoSlide();
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
    this.startAutoSlide();
  }
}
