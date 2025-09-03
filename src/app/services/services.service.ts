import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, BehaviorSubject, of } from 'rxjs';
import { map, catchError } from 'rxjs/operators';

export interface Service {
  id: string;
  title: string;
  description: string;
  icon: string;
  iconColor: string;
  bgColor: string;
  features: string[];
  technologies: string[];
  category: string;
  price?: string;
  duration?: string;
  delay: string;
  isActive?: boolean;
  createdAt?: Date;
  updatedAt?: Date;
}

export interface ServiceCategory {
  id: string;
  name: string;
  count: number;
  description?: string;
}

export interface ServiceQuoteRequest {
  serviceId: string;
  clientName: string;
  clientEmail: string;
  clientPhone?: string;
  projectDescription: string;
  budget?: string;
  timeline?: string;
  additionalRequirements?: string;
}

@Injectable({
  providedIn: 'root'
})
export class ServicesService {
  private apiUrl = 'http://localhost:8080/api'; // Replace with your Spring Boot backend URL
  private servicesSubject = new BehaviorSubject<Service[]>([]);
  private categoriesSubject = new BehaviorSubject<ServiceCategory[]>([]);

  public services$ = this.servicesSubject.asObservable();
  public categories$ = this.categoriesSubject.asObservable();

  constructor(private http: HttpClient) {
    this.loadServices();
    this.loadCategories();
  }

  // Load all services
  loadServices(): void {
    this.getServices().subscribe(
      services => this.servicesSubject.next(services),
      error => console.error('Error loading services:', error)
    );
  }

  // Load service categories
  loadCategories(): void {
    this.getCategories().subscribe(
      categories => this.categoriesSubject.next(categories),
      error => console.error('Error loading categories:', error)
    );
  }

  // Get all services from API or return mock data
  getServices(): Observable<Service[]> {
    return this.http.get<Service[]>(`${this.apiUrl}/services`).pipe(
      catchError(error => {
        console.warn('API not available, using mock data');
        return of(this.getMockServices());
      })
    );
  }

  // Get service by ID
  getServiceById(id: string): Observable<Service | undefined> {
    return this.services$.pipe(
      map(services => services.find(service => service.id === id))
    );
  }

  // Get services by category
  getServicesByCategory(categoryId: string): Observable<Service[]> {
    return this.services$.pipe(
      map(services =>
        categoryId === 'all'
          ? services
          : services.filter(service => service.category === categoryId)
      )
    );
  }

  // Get service categories
  getCategories(): Observable<ServiceCategory[]> {
    return this.http.get<ServiceCategory[]>(`${this.apiUrl}/services/categories`).pipe(
      catchError(error => {
        console.warn('API not available, using mock categories');
        return of(this.getMockCategories());
      })
    );
  }

  // Submit quote request
  submitQuoteRequest(quoteRequest: ServiceQuoteRequest): Observable<any> {
    return this.http.post(`${this.apiUrl}/services/quote`, quoteRequest).pipe(
      catchError(error => {
        console.error('Error submitting quote request:', error);
        // Return mock success response for demo
        return of({ success: true, message: 'Quote request submitted successfully' });
      })
    );
  }

  // Submit service inquiry
  submitServiceInquiry(inquiry: any): Observable<any> {
    return this.http.post(`${this.apiUrl}/services/inquiry`, inquiry).pipe(
      catchError(error => {
        console.error('Error submitting service inquiry:', error);
        return of({ success: true, message: 'Inquiry submitted successfully' });
      })
    );
  }

  // Mock data for development
  private getMockServices(): Service[] {
    return [
      {
        id: 'web-development',
        title: 'Web Development',
        description: 'Modern, responsive websites and web applications using cutting-edge technologies like Angular, React, and Next.js with performance optimization and SEO-friendly architecture.',
        icon: 'fas fa-laptop-code',
        iconColor: 'text-blue-600',
        bgColor: 'bg-blue-100',
        features: [
          'Responsive Design',
          'Performance Optimization',
          'SEO Implementation',
          'Cross-browser Compatibility',
          'Progressive Web Apps',
          'Content Management Systems'
        ],
        technologies: ['Angular', 'React', 'Next.js', 'TypeScript', 'Tailwind CSS', 'WordPress'],
        category: 'Frontend Development',
        price: 'From $2,500',
        duration: '4-8 weeks',
        delay: '0s',
        isActive: true,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        id: 'mobile-development',
        title: 'Mobile App Development',
        description: 'Native and cross-platform mobile applications for iOS and Android with intuitive user interfaces, offline capabilities, and seamless cloud synchronization.',
        icon: 'fas fa-mobile-alt',
        iconColor: 'text-purple-600',
        bgColor: 'bg-purple-100',
        features: [
          'Native iOS & Android Apps',
          'Cross-platform Development',
          'Offline Functionality',
          'Push Notifications',
          'In-app Purchases',
          'App Store Deployment'
        ],
        technologies: ['Flutter', 'React Native', 'Swift', 'Kotlin', 'Firebase', 'SQLite'],
        category: 'Mobile Development',
        price: 'From $5,000',
        duration: '8-16 weeks',
        delay: '0.6s',
        isActive: true,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        id: 'enterprise-software',
        title: 'Enterprise Software',
        description: 'Custom enterprise solutions including ERP systems, CRM platforms, inventory management, HR systems, and business intelligence dashboards.',
        icon: 'fas fa-building',
        iconColor: 'text-red-600',
        bgColor: 'bg-red-100',
        features: [
          'ERP System Development',
          'CRM Solutions',
          'Inventory Management',
          'HR Management Systems',
          'Business Intelligence',
          'Workflow Automation'
        ],
        technologies: ['Angular', 'Spring Boot', 'PostgreSQL', 'Docker', 'Kubernetes', 'Power BI'],
        category: 'Enterprise Solutions',
        price: 'From $15,000',
        duration: '16-32 weeks',
        delay: '0.8s',
        isActive: true,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        id: 'cloud-devops',
        title: 'Cloud & DevOps',
        description: 'Cloud migration, infrastructure setup, CI/CD pipelines, containerization, and DevOps consulting to streamline your development and deployment processes.',
        icon: 'fas fa-cloud',
        iconColor: 'text-indigo-600',
        bgColor: 'bg-indigo-100',
        features: [
          'Cloud Migration',
          'Infrastructure as Code',
          'CI/CD Pipelines',
          'Container Orchestration',
          'Monitoring & Logging',
          'Security Implementation'
        ],
        technologies: ['AWS', 'Azure', 'Docker', 'Kubernetes', 'Jenkins', 'Terraform'],
        category: 'Cloud & DevOps',
        price: 'From $4,000',
        duration: '4-12 weeks',
        delay: '1s',
        isActive: true,
        createdAt: new Date(),
        updatedAt: new Date()
      }
    ];
  }

  private getMockCategories(): ServiceCategory[] {
    return [
      { id: 'all', name: 'All Services', count: 6, description: 'View all available services' },
      { id: 'Frontend Development', name: 'Frontend', count: 1, description: 'Web and UI development services' },
      { id: 'Backend Development', name: 'Backend', count: 1, description: 'Server-side and API development' },
      { id: 'Financial Technology', name: 'Fintech', count: 1, description: 'Financial and banking solutions' },
      { id: 'Mobile Development', name: 'Mobile', count: 1, description: 'iOS and Android app development' },
      { id: 'Enterprise Solutions', name: 'Enterprise', count: 1, description: 'Large-scale business solutions' },
      { id: 'Cloud & DevOps', name: 'Cloud', count: 1, description: 'Cloud infrastructure and deployment' }
    ];
  }

  // Utility methods
  searchServices(query: string): Observable<Service[]> {
    return this.services$.pipe(
      map(services =>
        services.filter(service =>
          service.title.toLowerCase().includes(query.toLowerCase()) ||
          service.description.toLowerCase().includes(query.toLowerCase()) ||
          service.technologies.some(tech => tech.toLowerCase().includes(query.toLowerCase())) ||
          service.features.some(feature => feature.toLowerCase().includes(query.toLowerCase()))
        )
      )
    );
  }

  getServicesByTechnology(technology: string): Observable<Service[]> {
    return this.services$.pipe(
      map(services =>
        services.filter(service =>
          service.technologies.some(tech =>
            tech.toLowerCase().includes(technology.toLowerCase())
          )
        )
      )
    );
  }

  getServicesByPriceRange(minPrice: number, maxPrice: number): Observable<Service[]> {
    return this.services$.pipe(
      map(services =>
        services.filter(service => {
          if (!service.price) return false;
          const price = this.extractPriceFromString(service.price);
          return price >= minPrice && price <= maxPrice;
        })
      )
    );
  }

  private extractPriceFromString(priceString: string): number {
    const match = priceString.match(/\$?([\d,]+)/);
    return match ? parseInt(match[1].replace(',', '')) : 0;
  }
}
