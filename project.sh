# Create services component CSS
print_status "Creating services component styles..."
cat > src/app/sections/services/services.component.css << 'EOF'
/* Services section animations */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in-up {
  animation: fadeInUp 0.6s ease-out forwards;
}

/* Service card enhancements */
.service-card {
  position: relative;
  background: linear-gradient(145deg, #ffffff 0%, #f8fafc 100%);
  border: 1px solid rgba(229, 231, 235, 0.6);
  transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  overflow: hidden;
}

.service-card:hover {
  transform: translateY(-12px) scale(1.02);
  box-shadow: 0 25px 50px rgba(59, 130, 246, 0.15);
  border-color: rgba(59, 130, 246, 0.3);
}

.service-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(59, 130, 246, 0.05), transparent);
  transition: left 0.8s ease;
  z-index: 1;
}

.service-card:hover::before {
  left: 100%;
}

.service-card > * {
  position: relative;
  z-index: 2;
}

/* Icon container enhancements */
.service-icon-container {
  position: relative;
  transition: all 0.4s ease;
}

.service-icon-container::after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 120%;
  height: 120%;
  background: radial-gradient(circle, rgba(59, 130, 246, 0.1), transparent);
  border-radius: 50%;
  opacity: 0;
  transition: opacity 0.4s ease;
  z-index: -1;
}

.service-card:hover .service-icon-container::after {
  opacity: 1;
  animation: pulse-glow 2s ease-in-out infinite;
}

@keyframes pulse-glow {
  0%, 100% {
    transform: translate(-50%, -50%) scale(1);
    opacity: 0.1;
  }
  50% {
    transform: translate(-50%, -50%) scale(1.1);
    opacity: 0.2;
  }
}

/* Category filter buttons */
.category-filter {
  position: relative;
  overflow: hidden;
}

.category-filter::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
  transition: left 0.5s ease;
}

.category-filter:hover::before,
.category-filter.active::before {
  left: 100%;
}

/* Process steps styling */
.process-step {
  position: relative;
}

.process-step .step-number {
  position: relative;
  z-index: 20;
}

.process-step .step-number::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 130%;
  height: 130%;
  background: radial-gradient(circle, rgba(59, 130, 246, 0.1), transparent);
  border-radius: 50%;
  opacity: 0;
  transition: all 0.3s ease;
  z-index: -1;
}

.process-step:hover .step-number::before {
  opacity: 1;
  animation: ripple 1.5s ease-out infinite;
}

@keyframes ripple {
  0% {
    transform: translate(-50%, -50%) scale(1);
    opacity: 0.3;
  }
  100% {
    transform: translate(-50%, -50%) scale(2);
    opacity: 0;
  }
}

/* Connector line animation */
.connector-line {
  position: relative;
  overflow: hidden;
}

.connector-line::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 0%;
  height: 100%;
  background: linear-gradient(90deg, #3B82F6, #60A5FA, #3B82F6);
  transition: width 1s ease-in-out 0.5s;
}

.process-step:hover .connector-line::after {
  width: 100%;
}

/* Why choose us cards */
.feature-card {
  transition: all 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-5px);
}

.feature-icon {
  position: relative;
  transition: all 0.4s ease;
}

.feature-icon::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 140%;
  height: 140%;
  background: radial-gradient(circle, currentColor, transparent);
  opacity: 0;
  transition: opacity 0.3s ease;
  z-index: -1;
  border-radius: inherit;
}

.feature-card:hover .feature-icon::before {
  opacity: 0.1;
}

/* Modal styling */
.service-modal {
  backdrop-filter: blur(8px);
  animation: fadeIn 0.3s ease-out;
}

.modal-content {
  animation: slideInUp 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes slideInUp {
  from {
    opacity: 0;
    transform: translateY(50px) scale(0.95);
  }
  to {
    opacity: 1;
    transform: translateY(0) scale(1);
  }
}

/* Feature list styling */
.feature-list li {
  position: relative;
  padding-left: 1rem;
  transition: all 0.2s ease;
}

.feature-list li:hover {
  transform: translateX(4px);
  color: #3B82F6;
}

.feature-list li .fas {
  transition: all 0.2s ease;
}

.feature-list li:hover .fas {
  transform: scale(1.1);
  color: #10B981;
}

/* Technology tags */
.tech-tag {
  position: relative;
  transition: all 0.2s ease;
  overflow: hidden;
}

.tech-tag::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(59, 130, 246, 0.2), transparent);
  transition: left 0.3s ease;
}

.tech-tag:hover::before {
  left: 100%;
}

.tech-tag:hover {
  background-color: #3B82F6 !important;
  color: white !important;
  transform: translateY(-1px);
}

/* Call to action section */
.cta-gradient {
  position: relative;
  overflow: hidden;
}

.cta-gradient::before {
  content: '';
  position: absolute;
  top: -50%;
  right: -50%;
  width: 100%;
  height: 200%;
  background: radial-gradient(circle, rgba(255, 255, 255, 0.1), transparent);
  animation: float 8s ease-in-out infinite;
}

.cta-gradient::after {
  content: '';
  position: absolute;
  bottom: -50%;
  left: -50%;
  width: 100%;
  height: 200%;
  background: radial-gradient(circle, rgba(251, 191, 36, 0.1), transparent);
  animation: float 12s ease-in-out infinite reverse;
}

@keyframes float {
  0%, 100% {
    transform: rotate(0deg);
  }
  50% {
    transform: rotate(180deg);
  }
}

/* Button enhancements */
.btn-primary {
  position: relative;
  overflow: hidden;
  transition: all 0.3s ease;
}

.btn-primary::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
  transition: left 0.5s ease;
}

.btn-primary:hover::before {
  left: 100%;
}

.btn-secondary {
  position: relative;
  background: transparent;
  transition: all 0.3s ease;
}

.btn-secondary::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 0;
  height: 100%;
  background: currentColor;
  transition: width 0.3s ease;
  z-index: -1;
}

.btn-secondary:hover::before {
  width: 100%;
}

/* Line clamp utility */
.line-clamp-3 {
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .service-card {
    margin-bottom: 2rem;
  }
  
  .process-step {
    margin-bottom: 3rem;
  }
  
  .modal-content {
    margin: 1rem;
    max-height: calc(100vh - 2rem);
  }
}

@media (max-width: 640px) {
  .category-filter {
    font-size: 0.875rem;
    padding: 0.5rem 1rem;
  }
  
  .service-card {
    padding: 1.5rem;
  }
  
  .service-icon-container {
    width: 60px;
    height: 60px;
  }
}

/* Dark mode support (if implemented) */
@media (prefers-color-scheme: dark) {
  .service-card {
    background: linear-gradient(145deg, #1f2937 0%, #111827 100%);
    border-color: rgba(75, 85, 99, 0.6);
  }
  
  .service-card:hover {
    border-color: rgba(59, 130, 246, 0.5);
    box-shadow: 0 25px 50px rgba(0, 0, 0, 0.3);
  }
}

/* Loading states */
.service-skeleton {
  background: linear-gradient(90deg, #f0f0f0 25%, #e0e0e0 50%, #f0f0f0 75%);
  background-size: 200% 100%;
  animation: loading 1.5s infinite;
}

@keyframes loading {
  0% {
    background-position: 200% 0;
  }
  100% {
    background-position: -200% 0;
  }
}

/* Accessibility improvements */
@media (prefers-reduced-motion: reduce) {
  .service-card,
  .process-step,
  .feature-card,
  .btn-primary,
  .btn-secondary {
    transition: none;
    animation: none;
  }
  
  .service-card:hover,
  .process-step:hover,
  .feature-card:hover {
    transform: none;
  }
}

/* Focus visible styles */
.service-card:focus-visible,
.category-filter:focus-visible,
.btn-primary:focus-visible,
.btn-secondary:focus-visible {
  outline: 2px solid #3B82F6;
  outline-offset: 2px;
}

/* Print styles */
@media print {
  .service-modal,
  .cta-gradient {
    display: none !important;
  }
  
  .service-card {
    break-inside: avoid;
    page-break-inside: avoid;
    box-shadow: none;
    border: 1px solid #000;
  }
}
EOF

# Create services service file
print_status "Creating services data service..."
cat > src/app/services/services.service.ts << 'EOF'
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
        description: 'Modern, responsive websites and web applications using cutting-edge technologies like Angular, React, and Next.js with performance optimization and 
SEO-friendly architecture.',
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
        description: 'Native and cross-platform mobile applications for iOS and Android with intuitive user interfaces, offline capabilities, and seamless cloud 
synchronization.',
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
        description: 'Cloud migration, infrastructure setup, CI/CD pipelines, containerization, and DevOps consulting to streamline your development and deployment 
processes.',
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
EOF

print_status "Creating about service file..."
cat > src/app/services/about.service.ts << 'EOF'
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError } from 'rxjs/operators';

export interface TeamMember {
  id: string;
  name: string;
  role: string;
  description: string;
  avatar: string;
  skills: string[];
  experience: string;
  socialLinks?: {
    linkedin?: string;
    github?: string;
    twitter?: string;
  };
}

export interface CompanyStat {
  id: string;
  value: string;
  label: string;
  icon: string;
  description?: string;
}

export interface Technology {
  id: string;
  name: string;
  level: number;
  color: string;
  category: string;
  yearsExperience?: number;
}

export interface AboutInfo {
  mission: string;
  vision: string;
  values: string[];
  foundedYear: number;
  location: string;
  teamSize: number;
}

@Injectable({
  providedIn: 'root'
})
export class AboutService {
  private apiUrl = 'http://localhost:8080/api'; // Replace with your Spring Boot backend URL

  constructor(private http: HttpClient) { }

  // Get company information
  getAboutInfo(): Observable<AboutInfo> {
    return this.http.get<AboutInfo>(`${this.apiUrl}/about/info`).pipe(
      catchError(error => {
        console.warn('API not available, using mock data');
        return of(this.getMockAboutInfo());
      })
    );
  }

  // Get team members
  getTeamMembers(): Observable<TeamMember[]> {
    return this.http.get<TeamMember[]>(`${this.apiUrl}/about/team`).pipe(
      catchError(error => {
        console.warn('API not available, using mock data');
        return of(this.getMockTeamMembers());
      })
    );
  }

  // Get company statistics
  getCompanyStats(): Observable<CompanyStat[]> {
    return this.http.get<CompanyStat[]>(`${this.apiUrl}/about/stats`).pipe(
      catchError(error => {
        console.warn('API not available, using mock data');
        return of(this.getMockCompanyStats());
      })
    );
  }

  // Get technology expertise
  getTechnologies(): Observable<Technology[]> {
    return this.http.get<Technology[]>(`${this.apiUrl}/about/technologies`).pipe(
      catchError(error => {
        console.warn('API not available, using mock data');
        return of(this.getMockTechnologies());
      })
    );
  }

  // Mock data methods
  private getMockAboutInfo(): AboutInfo {
    return {
      mission: 'To empower African businesses with innovative, scalable software solutions that drive digital transformation and economic growth across the continent.',
      vision: 'To be the leading software development company in Africa, known for delivering world-class digital solutions that bridge the technology gap.',
      values: [
        'Innovation and Creativity',
        'Quality and Excellence',
        'Integrity and Transparency',
        'Customer Success',
        'Continuous Learning',
        'Social Impact'
      ],
      foundedYear: 2021,
      location: 'Nairobi, Kenya',
      teamSize: 5
    };
  }

  private getMockTeamMembers(): TeamMember[] {
    return [
      {
        id: 'lead-developer',
        name: 'Lead Developer',
        role: 'Founder & Chief Technology Officer',
        description: 'Passionate software engineer with extensive experience in full-stack development, fintech solutions, and enterprise software architecture. Committed to 
delivering innovative solutions that drive business growth.',
        avatar: 'fas fa-user',
        skills: [
          'Full-Stack Development',
          'System Architecture',
          'Team Leadership',
          'Project Management',
          'DevOps',
          'Cloud Computing'
        ],
        experience: '8+ Years',
        socialLinks: {
          linkedin: '#',
          github: '#',
          twitter: '#'
        }
      }
    ];
  }

  private getMockCompanyStats(): CompanyStat[] {
    return [
      {
        id: 'projects',
        value: '50+',
        label: 'Projects Completed',
        icon: 'fas fa-project-diagram',
        description: 'Successfully delivered projects across various industries'
      },
      {
        id: 'clients',
        value: '25+',
        label: 'Happy Clients',
        icon: 'fas fa-smile',
        description: 'Satisfied clients who trust our expertise'
      },
      {
        id: 'experience',
        value: '3+',
        label: 'Years Experience',
        icon: 'fas fa-calendar-alt',
        description: 'Years of dedicated service in software development'
      },
      {
        id: 'success-rate',
        value: '100%',
        label: 'Success Rate',
        icon: 'fas fa-chart-line',
        description: 'Perfect track record of project delivery'
      }
    ];
  }

  private getMockTechnologies(): Technology[] {
    return [
      { 
        id: 'angular', 
        name: 'Angular', 
        level: 95, 
        color: 'bg-red-500', 
        category: 'Frontend',
        yearsExperience: 5
      },
      { 
        id: 'react', 
        name: 'React', 
        level: 90, 
        color: 'bg-blue-500', 
        category: 'Frontend',
        yearsExperience: 4
      },
      { 
        id: 'spring-boot', 
        name: 'Spring Boot', 
        level: 88, 
        color: 'bg-green-500', 
        category: 'Backend',
        yearsExperience: 4
      },
      { 
        id: 'nodejs', 
        name: 'Node.js', 
        level: 85, 
        color: 'bg-yellow-500', 
        category: 'Backend',
        yearsExperience: 3
      },
      { 
        id: 'python', 
        name: 'Python', 
        level: 80, 
        color: 'bg-indigo-500', 
        category: 'Backend',
        yearsExperience: 3
      },
      { 
        id: 'cloud', 
        name: 'Cloud (AWS/Azure)', 
        level: 82, 
        color: 'bg-purple-500', 
        category: 'Cloud',
        yearsExperience: 2
      }
    ];
  }

  // Utility methods
  getTeamMemberById(id: string): Observable<TeamMember | undefined> {
    return new Observable(observer => {
      this.getTeamMembers().subscribe(members => {
        const member = members.find(m => m.id === id);
        observer.next(member);
        observer.complete();
      });
    });
  }

  getTechnologiesByCategory(category: string): Observable<Technology[]> {
    return new Observable(observer => {
      this.getTechnologies().subscribe(technologies => {
        const filtered = technologies.filter(tech => 
          tech.category.toLowerCase() === category.toLowerCase()
        );
        observer.next(filtered);
        observer.complete();
      });
    });
  }
}
EOF

print_status "Services component setup completed successfully! ✅"
echo ""
echo "📋 Summary:"
echo "- Generated services component with TypeScript logic"
echo "- Created comprehensive HTML template with service grid, filtering, and modal"
echo "- Added advanced CSS animations and responsive styling"
echo "- Created ServicesService for data management"
echo "- Created AboutService for team and company information"
echo "- Implemented service categories and filtering"
echo "- Added service detail modal with quote functionality"
echo "- Included development process visualization"
echo "- Added call-to-action sections"
echo ""
echo "🚀 Next steps:"
echo "1. Import the components in your app.module.ts"
echo "2. Add the services to your providers array"
echo "3. Include <app-services></app-services> in your main component"
echo "4. Customize the service data and API endpoints"
echo "5. Connect to your backend API when ready"
echo ""
echo "Note: The component includes mock data and will work without a backend API."
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        id: 'backend-systems',
        title: 'Backend & API Development',
        description: 'Robust, scalable backend solutions using Spring Boot, Node.js, and microservices architecture with secure authentication and real-time capabilities.',
        icon: 'fas fa-server',
        iconColor: 'text-green-600',
        bgColor: 'bg-green-100',
        features: [
          'RESTful API Development',
          'Microservices Architecture',
          'Database Design & Optimization',
          'Authentication & Authorization',
          'Real-time Communication',
          'Cloud Integration'
        ],
        technologies: ['Spring Boot', 'Node.js', 'Express', 'PostgreSQL', 'MongoDB', 'Redis'],
        category: 'Backend Development',
        price: 'From $3,500',
        duration: '6-12 weeks',
        delay: '0.2s',
        isActive: true,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        id: 'fintech-solutions',
        title: 'Fintech & Banking Solutions',
        description: 'Secure financial technology solutions including mobile banking, payment systems, SACCO management platforms, and blockchain integration for African 
markets.',
        icon: 'fas fa-coins',
        iconColor: 'text-yellow-600',
        bgColor: 'bg-yellow-100',
        features: [
          'Mobile Banking Apps',
          'Payment Gateway Integration',
          'SACCO Management Systems',
          'Loan Management',
          'Financial Analytics',
          'Compliance & Security'
        ],
        technologies: ['Flutter', 'React Native', 'Spring Security', 'Blockchain', 'AWS', 'Docker'],
        category: 'Financial Technology',
        price: 'From $8,000',
        duration: '12-20 weeks',
        delay: '0.4s',
        isActive: true,#!/bin/bash

# Services Section Component Setup Script
echo "🚀 Setting up Services Section Component"
echo "========================================"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "angular.json" ]; then
    echo "❌ Please run this script from the Angular project root directory"
    exit 1
fi

# Create services component
print_status "Generating services section component..."
ng generate component sections/services --skip-tests=true

# Create services component TypeScript file
print_status "Creating services component logic..."
cat > src/app/sections/services/services.component.ts << 'EOF'
import { Component, OnInit } from '@angular/core';

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
}

@Component({
  selector: 'app-services',
  templateUrl: './services.component.html',
  styleUrls: ['./services.component.css']
})
export class ServicesComponent implements OnInit {

  services: Service[] = [
    {
      id: 'web-development',
      title: 'Web Development',
      description: 'Modern, responsive websites and web applications using cutting-edge technologies like Angular, React, and Next.js with performance optimization and 
SEO-friendly architecture.',
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
      delay: '0s'
    },
    {
      id: 'backend-systems',
      title: 'Backend & API Development',
      description: 'Robust, scalable backend solutions using Spring Boot, Node.js, and microservices architecture with secure authentication and real-time capabilities.',
      icon: 'fas fa-server',
      iconColor: 'text-green-600',
      bgColor: 'bg-green-100',
      features: [
        'RESTful API Development',
        'Microservices Architecture',
        'Database Design & Optimization',
        'Authentication & Authorization',
        'Real-time Communication',
        'Cloud Integration'
      ],
      technologies: ['Spring Boot', 'Node.js', 'Express', 'PostgreSQL', 'MongoDB', 'Redis'],
      category: 'Backend Development',
      price: 'From $3,500',
      duration: '6-12 weeks',
      delay: '0.2s'
    },
    {
      id: 'fintech-solutions',
      title: 'Fintech & Banking Solutions',
      description: 'Secure financial technology solutions including mobile banking, payment systems, SACCO management platforms, and blockchain integration for African 
markets.',
      icon: 'fas fa-coins',
      iconColor: 'text-yellow-600',
      bgColor: 'bg-yellow-100',
      features: [
        'Mobile Banking Apps',
        'Payment Gateway Integration',
        'SACCO Management Systems',
        'Loan Management',
        'Financial Analytics',
        'Compliance & Security'
      ],
      technologies: ['Flutter', 'React Native', 'Spring Security', 'Blockchain', 'AWS', 'Docker'],
      category: 'Financial Technology',
      price: 'From $8,000',
      duration: '12-20 weeks',
      delay: '0.4s'
    },
    {
      id: 'mobile-development',
      title: 'Mobile App Development',
      description: 'Native and cross-platform mobile applications for iOS and Android with intuitive user interfaces, offline capabilities, and seamless cloud 
synchronization.',
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
      delay: '0.6s'
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
      delay: '0.8s'
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
      delay: '1s'
    }
  ];

  processSteps = [
    {
      step: 1,
      title: 'Discovery & Planning',
      description: 'We start by understanding your business requirements, target audience, and project goals through detailed consultations.',
      icon: 'fas fa-search',
      duration: '1-2 weeks'
    },
    {
      step: 2,
      title: 'Design & Architecture',
      description: 'Our team creates wireframes, system architecture, and UI/UX designs tailored to your brand and user needs.',
      icon: 'fas fa-drafting-compass',
      duration: '2-3 weeks'
    },
    {
      step: 3,
      title: 'Development & Testing',
      description: 'Agile development process with regular updates, code reviews, and comprehensive testing to ensure quality delivery.',
      icon: 'fas fa-code',
      duration: '4-16 weeks'
    },
    {
      step: 4,
      title: 'Deployment & Support',
      description: 'Seamless deployment to production environments with ongoing maintenance, updates, and technical support.',
      icon: 'fas fa-rocket',
      duration: 'Ongoing'
    }
  ];

  selectedService: Service | null = null;
  activeCategory = 'all';

  categories = [
    { id: 'all', name: 'All Services', count: this.services.length },
    { id: 'Frontend Development', name: 'Frontend', count: 1 },
    { id: 'Backend Development', name: 'Backend', count: 1 },
    { id: 'Financial Technology', name: 'Fintech', count: 1 },
    { id: 'Mobile Development', name: 'Mobile', count: 1 },
    { id: 'Enterprise Solutions', name: 'Enterprise', count: 1 },
    { id: 'Cloud & DevOps', name: 'Cloud', count: 1 }
  ];

  constructor() { }

  ngOnInit(): void {
    this.initializeAnimations();
  }

  private initializeAnimations(): void {
    // Initialize intersection observer for scroll animations
    const observerOptions = {
      threshold: 0.1,
      rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('animate-fade-in-up');
        }
      });
    }, observerOptions);

    // Observe all animated elements
    setTimeout(() => {
      const animatedElements = document.querySelectorAll('.animate-on-scroll');
      animatedElements.forEach(element => {
        observer.observe(element);
      });
    }, 100);
  }

  getFilteredServices(): Service[] {
    if (this.activeCategory === 'all') {
      return this.services;
    }
    return this.services.filter(service => service.category === this.activeCategory);
  }

  filterByCategory(category: string): void {
    this.activeCategory = category;
    this.selectedService = null;
  }

  selectService(service: Service): void {
    this.selectedService = service;
  }

  closeServiceDetail(): void {
    this.selectedService = null;
  }

  onServiceHover(service: Service): void {
    // Add hover effects or analytics tracking
    console.log('Service hovered:', service.title);
  }

  onGetQuote(service: Service): void {
    // Handle get quote action
    console.log('Get quote for:', service.title);
    // You can implement modal, navigation, or form here
    this.selectService(service);
  }

  onLearnMore(service: Service): void {
    // Handle learn more action
    console.log('Learn more about:', service.title);
    this.selectService(service);
  }

  onContactForService(service: Service): void {
    // Handle contact action
    console.log('Contact for service:', service.title);
    // You can implement contact form or navigation
    // Example: this.router.navigate(['/contact'], { queryParams: { service: service.id } });
  }
}
EOF

# Create services component HTML template
print_status "Creating services component template..."
cat > src/app/sections/services/services.component.html << 'EOF'
<section id="services" class="py-20 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <!-- Section Header -->
    <div class="text-center mb-16 animate-on-scroll opacity-0">
      <h2 class="text-4xl md:text-5xl font-bold text-gray-800 mb-6 font-poppins">Our Services</h2>
      <div class="w-24 h-1 bg-amber-500 mx-auto mb-6"></div>
      <p class="text-xl text-gray-600 max-w-4xl mx-auto font-inter leading-relaxed">
        Comprehensive software development services tailored to transform your business ideas 
        into powerful digital solutions that drive growth and efficiency.
      </p>
    </div>

    <!-- Service Categories Filter -->
    <div class="flex flex-wrap justify-center mb-12 animate-on-scroll opacity-0">
      <div class="bg-gray-50 rounded-2xl p-2 inline-flex flex-wrap gap-2">
        <button
          *ngFor="let category of categories"
          (click)="filterByCategory(category.id)"
          class="px-6 py-3 rounded-xl font-semibold transition-all duration-300 font-inter relative group"
          [class.bg-blue-600]="activeCategory === category.id"
          [class.text-white]="activeCategory === category.id"
          [class.text-gray-600]="activeCategory !== category.id"
          [class.hover:bg-blue-50]="activeCategory !== category.id"
          [class.hover:text-blue-600]="activeCategory !== category.id">
          {{ category.name }}
          <span 
            class="ml-2 text-xs px-2 py-1 rounded-full"
            [class.bg-blue-500]="activeCategory === category.id"
            [class.text-white]="activeCategory === category.id"
            [class.bg-gray-200]="activeCategory !== category.id"
            [class.text-gray-600]="activeCategory !== category.id">
            {{ category.count }}
          </span>
        </button>
      </div>
    </div>

    <!-- Services Grid -->
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 mb-20">
      <div 
        *ngFor="let service of getFilteredServices(); let i = index" 
        (mouseenter)="onServiceHover(service)"
        class="service-card bg-white p-8 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-500 hover:-translate-y-3 text-center group cursor-pointer 
animate-on-scroll opacity-0 relative overflow-hidden"
        [style.animation-delay]="service.delay">
        
        <!-- Background Pattern -->
        <div class="absolute top-0 right-0 w-32 h-32 opacity-5 group-hover:opacity-10 transition-opacity duration-500">
          <div class="w-full h-full bg-gradient-to-br from-current rounded-full transform rotate-45 scale-150"></div>
        </div>

        <!-- Service Icon -->
        <div 
          class="w-20 h-20 rounded-2xl flex items-center justify-center mx-auto mb-6 group-hover:scale-110 group-hover:rotate-3 transition-all duration-500 relative z-10"
          [ngClass]="service.bgColor">
          <i [class]="service.icon + ' text-3xl ' + service.iconColor group-hover:scale-110 transition-transform duration-300"></i>
          
          <!-- Glow effect -->
          <div class="absolute inset-0 rounded-2xl bg-gradient-to-r from-transparent via-white to-transparent opacity-0 group-hover:opacity-20 transition-opacity duration-500 
transform -skew-x-12"></div>
        </div>

        <!-- Service Content -->
        <h3 class="text-2xl font-bold mb-4 text-gray-800 font-poppins group-hover:text-blue-600 transition-colors duration-300">
          {{ service.title }}
        </h3>
        
        <p class="text-gray-600 font-inter leading-relaxed mb-6 line-clamp-3">
          {{ service.description }}
        </p>

        <!-- Key Features -->
        <div class="mb-6">
          <h4 class="text-sm font-semibold text-gray-700 mb-3 font-poppins uppercase tracking-wide">Key Features</h4>
          <div class="flex flex-wrap gap-2 justify-center">
            <span 
              *ngFor="let feature of service.features.slice(0, 3)"
              class="bg-gray-100 text-gray-700 text-xs px-3 py-1 rounded-full font-medium font-inter group-hover:bg-blue-50 group-hover:text-blue-700 transition-colors 
duration-300">
              {{ feature }}
            </span>
            <span 
              *ngIf="service.features.length > 3"
              class="bg-amber-100 text-amber-700 text-xs px-3 py-1 rounded-full font-medium font-inter">
              +{{ service.features.length - 3 }} more
            </span>
          </div>
        </div>

        <!-- Service Meta -->
        <div class="flex justify-between items-center mb-6 text-sm text-gray-500 font-inter">
          <div class="flex items-center">
            <i class="fas fa-clock mr-2"></i>
            {{ service.duration }}
          </div>
          <div class="flex items-center">
            <i class="fas fa-tag mr-2"></i>
            {{ service.price }}
          </div>
        </div>

        <!-- Action Buttons -->
        <div class="flex flex-col sm:flex-row gap-3">
          <button 
            (click)="onLearnMore(service)"
            class="flex-1 bg-blue-600 text-white py-3 px-4 rounded-xl font-semibold hover:bg-blue-700 transition-all duration-300 hover:scale-105 font-inter group relative 
overflow-hidden">
            <span class="relative z-10">Learn More</span>
            <div class="absolute inset-0 bg-gradient-to-r from-blue-700 to-blue-600 transform scale-x-0 group-hover:scale-x-100 transition-transform duration-300 
origin-left"></div>
          </button>
          <button 
            (click)="onGetQuote(service)"
            class="flex-1 border-2 border-blue-600 text-blue-600 py-3 px-4 rounded-xl font-semibold hover:bg-blue-600 hover:text-white transition-all duration-300 
font-inter">
            Get Quote
          </button>
        </div>

        <!-- Category Badge -->
        <div class="absolute top-4 left-4 bg-white bg-opacity-90 backdrop-blur-sm px-3 py-1 rounded-full text-xs font-semibold text-gray-600 font-inter">
          {{ service.category }}
        </div>
      </div>
    </div>

    <!-- Development Process -->
    <div class="mb-20 animate-on-scroll opacity-0">
      <div class="text-center mb-16">
        <h3 class="text-3xl font-bold text-gray-800 mb-4 font-poppins">Our Development Process</h3>
        <p class="text-gray-600 font-inter max-w-2xl mx-auto">
          We follow a proven methodology to ensure your project is delivered on time, within budget, and exceeds expectations.
        </p>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <div 
          *ngFor="let step of processSteps; let i = index"
          class="text-center group"
          [style.animation-delay]="(i * 0.2) + 's'">
          
          <!-- Step Number -->
          <div class="relative mb-6">
            <div class="w-16 h-16 bg-blue-600 text-white rounded-full flex items-center justify-center mx-auto font-bold text-xl font-poppins mb-4 group-hover:scale-110 
transition-transform duration-300 relative z-10">
              {{ step.step }}
            </div>
            
            <!-- Step Icon -->
            <div class="w-12 h-12 bg-white border-4 border-blue-600 rounded-full flex items-center justify-center mx-auto -mt-6 relative z-20">
              <i [class]="step.icon + ' text-blue-600'"></i>
            </div>

            <!-- Connector Line (except last item) -->
            <div 
              *ngIf="i < processSteps.length - 1"
              class="hidden lg:block absolute top-8 left-1/2 w-full h-0.5 bg-gray-300 transform translate-x-1/2 -z-10">
              <div class="h-full bg-blue-600 transform scale-x-0 group-hover:scale-x-100 transition-transform duration-500 origin-left"></div>
            </div>
          </div>

          <!-- Step Content -->
          <h4 class="text-xl font-bold mb-3 text-gray-800 font-poppins group-hover:text-blue-600 transition-colors duration-300">
            {{ step.title }}
          </h4>
          <p class="text-gray-600 font-inter leading-relaxed mb-3">
            {{ step.description }}
          </p>
          <div class="inline-flex items-center bg-gray-100 text-gray-600 px-3 py-1 rounded-full text-sm font-medium font-inter">
            <i class="fas fa-calendar-alt mr-2"></i>
            {{ step.duration }}
          </div>
        </div>
      </div>
    </div>

    <!-- Why Choose Us Section -->
    <div class="bg-gray-50 rounded-3xl p-8 md:p-12 mb-20 animate-on-scroll opacity-0">
      <div class="text-center mb-12">
        <h3 class="text-3xl font-bold text-gray-800 mb-4 font-poppins">Why Choose FusionWare?</h3>
        <p class="text-gray-600 font-inter max-w-3xl mx-auto">
          We combine technical expertise with deep understanding of African markets to deliver solutions that truly make a difference.
        </p>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <div class="text-center group">
          <div class="w-16 h-16 bg-blue-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 transition-all 
duration-300">
            <i class="fas fa-award text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">Quality Assurance</h4>
          <p class="text-gray-600 font-inter text-sm">Rigorous testing and code reviews ensure bug-free, high-performance applications.</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-green-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 transition-all 
duration-300">
            <i class="fas fa-clock text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">On-Time Delivery</h4>
          <p class="text-gray-600 font-inter text-sm">We respect deadlines and deliver projects on schedule without compromising quality.</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-purple-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 transition-all 
duration-300">
            <i class="fas fa-handshake text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">Ongoing Support</h4>
          <p class="text-gray-600 font-inter text-sm">Comprehensive maintenance and support to keep your systems running smoothly.</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-amber-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 transition-all 
duration-300">
            <i class="fas fa-globe-africa text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">Local Expertise</h4>
          <p class="text-gray-600 font-inter text-sm">Deep understanding of African markets, regulations, and business needs.</p>
        </div>
      </div>
    </div>

    <!-- Call to Action -->
    <div class="text-center bg-gradient-to-r from-blue-600 to-blue-800 rounded-3xl p-12 text-white animate-on-scroll opacity-0">
      <h3 class="text-3xl font-bold mb-4 font-poppins">Ready to Transform Your Business?</h3>
      <p class="text-xl mb-8 opacity-90 font-inter max-w-3xl mx-auto">
        Let's discuss your project requirements and create a custom solution that drives your business forward.
      </p>
      <div class="flex flex-col sm:flex-row gap-4 justify-center">
        <button class="bg-amber-500 text-gray-900 px-8 py-4 rounded-2xl font-semibold hover:bg-amber-400 transition-all duration-300 hover:scale-105 shadow-lg font-inter">
          Schedule Consultation
        </button>
        <button class="border-2 border-white text-white px-8 py-4 rounded-2xl font-semibold hover:bg-white hover:text-blue-600 transition-all duration-300 font-inter">
          View Portfolio
        </button>
      </div>
    </div>
  </div>
</section>

<!-- Service Detail Modal -->
<div 
  *ngIf="selectedService" 
  class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50"
  (click)="closeServiceDetail()">
  
  <div 
    class="bg-white rounded-3xl max-w-4xl w-full max-h-[90vh] overflow-y-auto"
    (click)="$event.stopPropagation()">
    
    <!-- Modal Header -->
    <div class="sticky top-0 bg-white border-b border-gray-200 p-6 rounded-t-3xl">
      <div class="flex justify-between items-center">
        <div class="flex items-center">
          <div 
            class="w-12 h-12 rounded-xl flex items-center justify-center mr-4"
            [ngClass]="selectedService.bgColor">
            <i [class]="selectedService.icon + ' text-xl ' + selectedService.iconColor"></i>
          </div>
          <div>
            <h3 class="text-2xl font-bold text-gray-800 font-poppins">{{ selectedService.title }}</h3>
            <p class="text-gray-600 font-inter">{{ selectedService.category }}</p>
          </div>
        </div>
        <button 
          (click)="closeServiceDetail()"
          class="w-10 h-10 bg-gray-100 hover:bg-gray-200 rounded-full flex items-center justify-center transition-colors duration-200">
          <i class="fas fa-times text-gray-600"></i>
        </button>
      </div>
    </div>

    <!-- Modal Content -->
    <div class="p-6">
      <!-- Description -->
      <div class="mb-8">
        <h4 class="text-lg font-semibold mb-3 text-gray-800 font-poppins">Service Overview</h4>
        <p class="text-gray-600 font-inter leading-relaxed">{{ selectedService.description }}</p>
      </div>

      <!-- Features & Technologies Grid -->
      <div class="grid md:grid-cols-2 gap-8 mb-8">
        <!-- Features -->
        <div>
          <h4 class="text-lg font-semibold mb-4 text-gray-800 font-poppins">Key Features</h4>
          <ul class="space-y-3">
            <li 
              *ngFor="let feature of selectedService.features"
              class="flex items-center text-gray-700 font-inter">
              <i class="fas fa-check-circle text-green-500 mr-3"></i>
              {{ feature }}
            </li>
          </ul>
        </div>

        <!-- Technologies -->
        <div>
          <h4 class="text-lg font-semibold mb-4 text-gray-800 font-poppins">Technologies Used</h4>
          <div class="flex flex-wrap gap-2">
            <span 
              *ngFor="let tech of selectedService.technologies"
              class="bg-blue-100 text-blue-800 px-3 py-2 rounded-lg text-sm font-medium font-inter">
              {{ tech }}
            </span>
          </div>
        </div>
      </div>

      <!-- Project Details -->
      <div class="bg-gray-50 rounded-2xl p-6 mb-8">
        <div class="grid md:grid-cols-2 gap-6">
          <div class="text-center">
            <i class="fas fa-dollar-sign text-2xl text-green-600 mb-2"></i>
            <h5 class="font-semibold text-gray-800 font-poppins">Investment</h5>
            <p class="text-gray-600 font-inter">{{ selectedService.price }}</p>
          </div>
          <div class="text-center">
            <i class="fas fa-calendar-alt text-2xl text-blue-600 mb-2"></i>
            <h5 class="font-semibold text-gray-800 font-poppins">Timeline</h5>
            <p class="text-gray-600 font-inter">{{ selectedService.duration }}</p>
          </div>
        </div>
      </div>

      <!-- Action Buttons -->
      <div class="flex flex-col sm:flex-row gap-4">
        <button 
          (click)="onContactForService(selectedService)"
          class="flex-1 bg-blue-600 text-white py-4 px-6 rounded-2xl font-semibold hover:bg-blue-700 transition-all duration-300 font-inter">
          <i class="fas fa-envelope mr-2"></i>
          Get Started
        </button>
        <button 
          (click)="onGetQuote(selectedService)"
          class="flex-1 border-2 border-blue-600 text-blue-600 py-4 px-6 rounded-2xl font-semibold hover:bg-blue-600 hover:text-white transition-all duration-300 font-inter">
          <i class="fas fa-calculator mr-2"></i>
          Request Quote
        </button>
      </div>
    </div>
  </div>
</div>
EOF# 
Create 
services component CSS
print_status "Creating services component styles..."
cat > src/app/sections/services/services.component.css << 'EOF'
/* Services section animations */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in-up {
  animation: fadeInUp 0.6s ease-out forwards;
}

/* Service card enhancements */
.service-card {
  position: relative;
  background: linear-gradient(145deg, #ffffff 0%, #f8fafc 100%);
  border: 1px solid rgba(229, 231, 235, 0.6);
  transition: all 0.5s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  overflow: hidden;
}

.service-card:hover {
  transform: translateY(-12px) scale(1.02);
  box-shadow: 0 25px 50px rgba(59, 130, 246, 0.15);
  border-color: rgba(59, 130, 246, 0.3);
}

.service-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(59, 130, 246, 0.05), transparent);
  transition: left 0.8s ease;
  z-index: 1;
}

.service-card:hover::before {
  left: 100%;
}

.service-card > * {
  position: relative;
  z-index: 2;
}

/* Icon container enhancements */
.service-icon-container {
  position: relative;
  transition: all 0.4s ease;
}

.service-icon-container::after {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 120%;
  height: 120%;
  background: radial-gradient(circle, rgba(59, 130, 246, 0.1), transparent);
  border-radius: 50%;
  opacity: 0;
  transition: opacity 0.4s ease;
  z-index: -1;
}

.service-card:hover .service-icon-container::after {
  opacity: 1;
  animation: pulse-glow 2s ease-in-out infinite;
}

@keyframes pulse-glow {
  0%, 100% {
    transform: translate(-50%, -50%) scale(1);
    opacity: 0.1;
  }
  50% {
    transform: translate(-50%, -50%) scale(1.1);
    opacity: 0.2;
  }
}

/* Category filter buttons */
.category-filter {
  position: relative;
  overflow: hidden;
}

.category-filter::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
  transition: left 0.5s ease;
}

.category-filter:hover::before,
.category-filter.active::before {
  left: 100%;
}

/* Process steps styling */
.process-step {
  position: relative;
}

.process-step .step-number {
  position: relative;
  z-index: 20;
}

.process-step .step-number::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 130%;
  height: 130%;
  background: radial-gradient(circle, rgba(59, 130, 246, 0.1), transparent);
  border-radius: 50%;
  opacity: 0;
  transition: all 0.3s ease;
  z-index: -1;
}

.process-step:hover .step-number::before {
  opacity: 1;
  animation: ripple 1.5s ease-out infinite;
}

@keyframes ripple {
  0% {
    transform: translate(-50%, -50%) scale(1);
    opacity: 0.3;
  }
  100% {
    transform: translate(-50%, -50%) scale(2);
    opacity: 0;
  }
}

/* Connector line animation */
.connector-line {
  position: relative;
  overflow: hidden;
}

.connector-line::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 0%;
  height: 100%;
  background: linear-gradient(90deg, #3B82F6, #60A5FA, #3B82F6);
  transition: width 1s ease-in-out 0.5s;
}

.process-step:hover .connector-line::after {
  width: 100%;
}

/* Why choose us cards */
.feature-card {
  transition: all 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-5px);
}

.feature-icon {
  position: relative;
  transition: all 0.4s ease;
}

.feature-icon::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 140%;
  height: 140%;
  background: radial-gradient(circle, currentColor, transparent);
  opacity: 0;
  transition: opacity 0.3s ease;
  z-index: -1;
  border-radius: inherit;
}

.feature-card:hover .feature-icon::before {
  opacity: 0.1;
}

/* Modal styling */
.service-modal {
  backdrop-filter: blur(8px);
  animation: fadeIn 0.3s ease-out;
}

.modal-content {
  animation: slideInUp 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes slideInUp {
  from {
    opacity: 0;
    transform: translateY(50px) scale(0.95);
  }
  to {
    opacity: 1;
    transform: translateY(0) scale(1);
  }
}

/* Feature list styling */
.feature-list li {
  position: relative;
  padding-left: 1rem;
  transition: all 0.2s ease;
}

.feature-list li:hover {
  transform: translateX(4px);
  color: #3B82F6;
}

.feature-list li .fas {
  transition: all 0.2s ease;
}

.feature-list li:hover .fas {
  transform: scale(1.1);
  color: #10B981;
}

/* Technology tags */
.tech-tag {
  position: relative;
  transition: all 0.2s ease;
  overflow: hidden;
}

.tech-tag::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(59, 130, 246, 0.2), transparent);
  transition: left 0.3s ease;
}

.tech-tag:hover::before {
  left: 100%;
}

.tech-tag:hover {
  background-color: #3B82F6 !important;
  color: white !important;
  transform: translateY(-1px);
}

/* Call to action section */
.cta-gradient {
  position: relative;
  overflow: hidden;
}

.cta-gradient::before {
  content: '';
  position: absolute;
  top: -50%;
  right: -50%;
  width: 100%;
  height: 200%;
  background: radial-gradient(circle, rgba(255, 255, 255, 0.1), transparent);
  animation: float 8s ease-in-out infinite;
}

.cta-gradient::after {
  content: '';
  position: absolute;
  bottom: -50%;
  left: -50%;
  width: 100%;
  height: 200%;
  background: radial-gradient(circle, rgba(251, 191, 36, 0.1), transparent);
  animation: float 12s ease-in-out infinite reverse;
}

@keyframes float {
  0%, 100% {
    transform: rotate(0deg);
  }
  50% {
    transform: rotate(180deg);
  }
}

/* Button enhancements */
.btn-primary {
  position: relative;
  overflow: hidden;
  transition: all 0.3s ease;
}

.btn-primary::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
  transition: left 0.5s ease;
}

.btn-primary:hover::before {
  left: 100%;
}

.btn-secondary {
  position: relative;
  background: transparent;
  transition: all 0.3s ease;
}

.btn-secondary::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 0;
  height: 100%;
  background: currentColor;
  transition: width 0.3s ease;
  z-index: -1;
}

.btn-secondary:hover::before {
  width: 100%;
}

/* Line clamp utility */
.line-clamp-3 {
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .service-card {
    margin-bottom: 2rem;
  }
  
  .process-step {
    margin-bottom: 3rem;
  }
  
  .modal-content {
    margin: 1rem;
    max-height: calc(100vh - 2rem);
  }
}

@media (max-width: 640px) {
  .category-filter {
    font-size: 0.875rem;
    padding: 0.5rem 1rem;
  }
  
  .service-card {
    padding: 1.5rem;
  }
  
  .service-icon-container {
    width: 60px;
    height: 60px;
  }
}

/* Dark mode support (if implemented) */
@media (prefers-color-scheme: dark) {
  .service-card {
    background: linear-gradient(145deg, #1f2937 0%, #111827 100%);
    border-color: rgba(75, 85, 99, 0.6);
  }
  
  .service-card:hover {
    border-color: rgba(59, 130, 246, 0.5);
    box-shadow: 0 25px 50px rgba(0, 0, 0, 0.3);
  }
}

/* Loading states */
.service-skeleton {
  background: linear-gradient(90deg, #f0f0f0 25%, #e0e0e0 50%, #f0f0f0 75%);
  background-size: 200% 100%;
  animation: loading 1.5s infinite;
}

@keyframes loading {
  0% {
    background-position: 200% 0;
  }
  100% {
    background-position: -200% 0;
  }
}

/* Accessibility improvements */
@media (prefers-reduced-motion: reduce) {
  .service-card,
  .process-step,
  .feature-card,
  .btn-primary,
  .btn-secondary {
    transition: none;
    animation: none;
  }
  
  .service-card:hover,
  .process-step:hover,
  .feature-card:hover {
    transform: none;
  }
}

/* Focus visible styles */
.service-card:focus-visible,
.category-filter:focus-visible,
.btn-primary:focus-visible,
.btn-secondary:focus-visible {
  outline: 2px solid #3B82F6;
  outline-offset: 2px;
}

/* Print styles */
@media print {
  .service-modal,
  .cta-gradient {
    display: none !important;
  }
  
  .service-card {
    break-inside: avoid;
    page-break-inside: avoid;
    box-shadow: none;
    border: 1px solid #000;
  }
}
EOF

# Create services service file
print_status "Creating services data service..."
cat > src/app/services/services.service.ts << 'EOF'
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
        description: 'Modern, responsive websites and web applications using cutting-edge technologies like Angular, React, and Next.js with performance 
optimization and SEO-friendly architecture.',
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
        id: 'backend-systems',
        title: 'Backend & API Development',
        description: 'Robust, scalable backend solutions using Spring Boot, Node.js, and microservices architecture with secure authentication and real-time 
capabilities.',
        icon: 'fas fa-server',
        iconColor: 'text-green-600',
        bgColor: 'bg-green-100',
        features: [
          'RESTful API Development',
          'Microservices Architecture',
          'Database Design & Optimization',
          'Authentication & Authorization',
          'Real-time Communication',
          'Cloud Integration'
        ],
        technologies: ['Spring Boot', 'Node.js', 'Express', 'PostgreSQL', 'MongoDB', 'Redis'],
        category: 'Backend Development',
        price: 'From $3,500',
        duration: '6-12 weeks',
        delay: '0.2s',
        isActive: true,
        createdAt: new Date(),
        updatedAt: new Date()
      },
      {
        id: 'fintech-solutions',
        title: 'Fintech & Banking Solutions',
        description: 'Secure financial technology solutions including mobile banking, payment systems, SACCO management platforms, and blockchain integration for 
African markets.',
        icon: 'fas fa-coins',
        iconColor: 'text-yellow-600',
        bgColor: 'bg-yellow-100',
        features: [
          'Mobile Banking Apps',
          'Payment Gateway Integration',
          'SACCO Management Systems',
          'Loan Management',
          'Financial Analytics',
          'Compliance & Security'
        ],
        technologies: ['Flutter', 'React Native', 'Spring Security', 'Blockchain', 'AWS', 'Docker'],
        category: 'Financial Technology',
        price: 'From $8,000',
        duration: '12-20 weeks',
        delay: '0.4s',
        isActive: true,#!/bin/bash

# Services Section Component Setup Script
echo "🚀 Setting up Services Section Component"
echo "========================================"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "angular.json" ]; then
    echo "❌ Please run this script from the Angular project root directory"
    exit 1
fi

# Create services component
print_status "Generating services section component..."
ng generate component sections/services --skip-tests=true

# Create services component TypeScript file
print_status "Creating services component logic..."
cat > src/app/sections/services/services.component.ts << 'EOF'
import { Component, OnInit } from '@angular/core';

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
}

@Component({
  selector: 'app-services',
  templateUrl: './services.component.html',
  styleUrls: ['./services.component.css']
})
export class ServicesComponent implements OnInit {

  services: Service[] = [
    {
      id: 'web-development',
      title: 'Web Development',
      description: 'Modern, responsive websites and web applications using cutting-edge technologies like Angular, React, and Next.js with performance optimization 
and SEO-friendly architecture.',
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
      delay: '0s'
    },
    {
      id: 'backend-systems',
      title: 'Backend & API Development',
      description: 'Robust, scalable backend solutions using Spring Boot, Node.js, and microservices architecture with secure authentication and real-time 
capabilities.',
      icon: 'fas fa-server',
      iconColor: 'text-green-600',
      bgColor: 'bg-green-100',
      features: [
        'RESTful API Development',
        'Microservices Architecture',
        'Database Design & Optimization',
        'Authentication & Authorization',
        'Real-time Communication',
        'Cloud Integration'
      ],
      technologies: ['Spring Boot', 'Node.js', 'Express', 'PostgreSQL', 'MongoDB', 'Redis'],
      category: 'Backend Development',
      price: 'From $3,500',
      duration: '6-12 weeks',
      delay: '0.2s'
    },
    {
      id: 'fintech-solutions',
      title: 'Fintech & Banking Solutions',
      description: 'Secure financial technology solutions including mobile banking, payment systems, SACCO management platforms, and blockchain integration for 
African markets.',
      icon: 'fas fa-coins',
      iconColor: 'text-yellow-600',
      bgColor: 'bg-yellow-100',
      features: [
        'Mobile Banking Apps',
        'Payment Gateway Integration',
        'SACCO Management Systems',
        'Loan Management',
        'Financial Analytics',
        'Compliance & Security'
      ],
      technologies: ['Flutter', 'React Native', 'Spring Security', 'Blockchain', 'AWS', 'Docker'],
      category: 'Financial Technology',
      price: 'From $8,000',
      duration: '12-20 weeks',
      delay: '0.4s'
    },
    {
      id: 'mobile-development',
      title: 'Mobile App Development',
      description: 'Native and cross-platform mobile applications for iOS and Android with intuitive user interfaces, offline capabilities, and seamless cloud 
synchronization.',
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
      delay: '0.6s'
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
      delay: '0.8s'
    },
    {
      id: 'cloud-devops',
      title: 'Cloud & DevOps',
      description: 'Cloud migration, infrastructure setup, CI/CD pipelines, containerization, and DevOps consulting to streamline your development and deployment 
processes.',
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
      delay: '1s'
    }
  ];

  processSteps = [
    {
      step: 1,
      title: 'Discovery & Planning',
      description: 'We start by understanding your business requirements, target audience, and project goals through detailed consultations.',
      icon: 'fas fa-search',
      duration: '1-2 weeks'
    },
    {
      step: 2,
      title: 'Design & Architecture',
      description: 'Our team creates wireframes, system architecture, and UI/UX designs tailored to your brand and user needs.',
      icon: 'fas fa-drafting-compass',
      duration: '2-3 weeks'
    },
    {
      step: 3,
      title: 'Development & Testing',
      description: 'Agile development process with regular updates, code reviews, and comprehensive testing to ensure quality delivery.',
      icon: 'fas fa-code',
      duration: '4-16 weeks'
    },
    {
      step: 4,
      title: 'Deployment & Support',
      description: 'Seamless deployment to production environments with ongoing maintenance, updates, and technical support.',
      icon: 'fas fa-rocket',
      duration: 'Ongoing'
    }
  ];

  selectedService: Service | null = null;
  activeCategory = 'all';

  categories = [
    { id: 'all', name: 'All Services', count: this.services.length },
    { id: 'Frontend Development', name: 'Frontend', count: 1 },
    { id: 'Backend Development', name: 'Backend', count: 1 },
    { id: 'Financial Technology', name: 'Fintech', count: 1 },
    { id: 'Mobile Development', name: 'Mobile', count: 1 },
    { id: 'Enterprise Solutions', name: 'Enterprise', count: 1 },
    { id: 'Cloud & DevOps', name: 'Cloud', count: 1 }
  ];

  constructor() { }

  ngOnInit(): void {
    this.initializeAnimations();
  }

  private initializeAnimations(): void {
    // Initialize intersection observer for scroll animations
    const observerOptions = {
      threshold: 0.1,
      rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('animate-fade-in-up');
        }
      });
    }, observerOptions);

    // Observe all animated elements
    setTimeout(() => {
      const animatedElements = document.querySelectorAll('.animate-on-scroll');
      animatedElements.forEach(element => {
        observer.observe(element);
      });
    }, 100);
  }

  getFilteredServices(): Service[] {
    if (this.activeCategory === 'all') {
      return this.services;
    }
    return this.services.filter(service => service.category === this.activeCategory);
  }

  filterByCategory(category: string): void {
    this.activeCategory = category;
    this.selectedService = null;
  }

  selectService(service: Service): void {
    this.selectedService = service;
  }

  closeServiceDetail(): void {
    this.selectedService = null;
  }

  onServiceHover(service: Service): void {
    // Add hover effects or analytics tracking
    console.log('Service hovered:', service.title);
  }

  onGetQuote(service: Service): void {
    // Handle get quote action
    console.log('Get quote for:', service.title);
    // You can implement modal, navigation, or form here
    this.selectService(service);
  }

  onLearnMore(service: Service): void {
    // Handle learn more action
    console.log('Learn more about:', service.title);
    this.selectService(service);
  }

  onContactForService(service: Service): void {
    // Handle contact action
    console.log('Contact for service:', service.title);
    // You can implement contact form or navigation
    // Example: this.router.navigate(['/contact'], { queryParams: { service: service.id } });
  }
}
EOF

# Create services component HTML template
print_status "Creating services component template..."
cat > src/app/sections/services/services.component.html << 'EOF'
<section id="services" class="py-20 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <!-- Section Header -->
    <div class="text-center mb-16 animate-on-scroll opacity-0">
      <h2 class="text-4xl md:text-5xl font-bold text-gray-800 mb-6 font-poppins">Our Services</h2>
      <div class="w-24 h-1 bg-amber-500 mx-auto mb-6"></div>
      <p class="text-xl text-gray-600 max-w-4xl mx-auto font-inter leading-relaxed">
        Comprehensive software development services tailored to transform your business ideas 
        into powerful digital solutions that drive growth and efficiency.
      </p>
    </div>

    <!-- Service Categories Filter -->
    <div class="flex flex-wrap justify-center mb-12 animate-on-scroll opacity-0">
      <div class="bg-gray-50 rounded-2xl p-2 inline-flex flex-wrap gap-2">
        <button
          *ngFor="let category of categories"
          (click)="filterByCategory(category.id)"
          class="px-6 py-3 rounded-xl font-semibold transition-all duration-300 font-inter relative group"
          [class.bg-blue-600]="activeCategory === category.id"
          [class.text-white]="activeCategory === category.id"
          [class.text-gray-600]="activeCategory !== category.id"
          [class.hover:bg-blue-50]="activeCategory !== category.id"
          [class.hover:text-blue-600]="activeCategory !== category.id">
          {{ category.name }}
          <span 
            class="ml-2 text-xs px-2 py-1 rounded-full"
            [class.bg-blue-500]="activeCategory === category.id"
            [class.text-white]="activeCategory === category.id"
            [class.bg-gray-200]="activeCategory !== category.id"
            [class.text-gray-600]="activeCategory !== category.id">
            {{ category.count }}
          </span>
        </button>
      </div>
    </div>

    <!-- Services Grid -->
    <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 mb-20">
      <div 
        *ngFor="let service of getFilteredServices(); let i = index" 
        (mouseenter)="onServiceHover(service)"
        class="service-card bg-white p-8 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-500 hover:-translate-y-3 text-center group cursor-pointer 
animate-on-scroll opacity-0 relative overflow-hidden"
        [style.animation-delay]="service.delay">
        
        <!-- Background Pattern -->
        <div class="absolute top-0 right-0 w-32 h-32 opacity-5 group-hover:opacity-10 transition-opacity duration-500">
          <div class="w-full h-full bg-gradient-to-br from-current rounded-full transform rotate-45 scale-150"></div>
        </div>

        <!-- Service Icon -->
        <div 
          class="w-20 h-20 rounded-2xl flex items-center justify-center mx-auto mb-6 group-hover:scale-110 group-hover:rotate-3 transition-all duration-500 relative 
z-10"
          [ngClass]="service.bgColor">
          <i [class]="service.icon + ' text-3xl ' + service.iconColor group-hover:scale-110 transition-transform duration-300"></i>
          
          <!-- Glow effect -->
          <div class="absolute inset-0 rounded-2xl bg-gradient-to-r from-transparent via-white to-transparent opacity-0 group-hover:opacity-20 transition-opacity 
duration-500 transform -skew-x-12"></div>
        </div>

        <!-- Service Content -->
        <h3 class="text-2xl font-bold mb-4 text-gray-800 font-poppins group-hover:text-blue-600 transition-colors duration-300">
          {{ service.title }}
        </h3>
        
        <p class="text-gray-600 font-inter leading-relaxed mb-6 line-clamp-3">
          {{ service.description }}
        </p>

        <!-- Key Features -->
        <div class="mb-6">
          <h4 class="text-sm font-semibold text-gray-700 mb-3 font-poppins uppercase tracking-wide">Key Features</h4>
          <div class="flex flex-wrap gap-2 justify-center">
            <span 
              *ngFor="let feature of service.features.slice(0, 3)"
              class="bg-gray-100 text-gray-700 text-xs px-3 py-1 rounded-full font-medium font-inter group-hover:bg-blue-50 group-hover:text-blue-700 
transition-colors duration-300">
              {{ feature }}
            </span>
            <span 
              *ngIf="service.features.length > 3"
              class="bg-amber-100 text-amber-700 text-xs px-3 py-1 rounded-full font-medium font-inter">
              +{{ service.features.length - 3 }} more
            </span>
          </div>
        </div>

        <!-- Service Meta -->
        <div class="flex justify-between items-center mb-6 text-sm text-gray-500 font-inter">
          <div class="flex items-center">
            <i class="fas fa-clock mr-2"></i>
            {{ service.duration }}
          </div>
          <div class="flex items-center">
            <i class="fas fa-tag mr-2"></i>
            {{ service.price }}
          </div>
        </div>

        <!-- Action Buttons -->
        <div class="flex flex-col sm:flex-row gap-3">
          <button 
            (click)="onLearnMore(service)"
            class="flex-1 bg-blue-600 text-white py-3 px-4 rounded-xl font-semibold hover:bg-blue-700 transition-all duration-300 hover:scale-105 font-inter group 
relative overflow-hidden">
            <span class="relative z-10">Learn More</span>
            <div class="absolute inset-0 bg-gradient-to-r from-blue-700 to-blue-600 transform scale-x-0 group-hover:scale-x-100 transition-transform duration-300 
origin-left"></div>
          </button>
          <button 
            (click)="onGetQuote(service)"
            class="flex-1 border-2 border-blue-600 text-blue-600 py-3 px-4 rounded-xl font-semibold hover:bg-blue-600 hover:text-white transition-all duration-300 
font-inter">
            Get Quote
          </button>
        </div>

        <!-- Category Badge -->
        <div class="absolute top-4 left-4 bg-white bg-opacity-90 backdrop-blur-sm px-3 py-1 rounded-full text-xs font-semibold text-gray-600 font-inter">
          {{ service.category }}
        </div>
      </div>
    </div>

    <!-- Development Process -->
    <div class="mb-20 animate-on-scroll opacity-0">
      <div class="text-center mb-16">
        <h3 class="text-3xl font-bold text-gray-800 mb-4 font-poppins">Our Development Process</h3>
        <p class="text-gray-600 font-inter max-w-2xl mx-auto">
          We follow a proven methodology to ensure your project is delivered on time, within budget, and exceeds expectations.
        </p>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <div 
          *ngFor="let step of processSteps; let i = index"
          class="text-center group"
          [style.animation-delay]="(i * 0.2) + 's'">
          
          <!-- Step Number -->
          <div class="relative mb-6">
            <div class="w-16 h-16 bg-blue-600 text-white rounded-full flex items-center justify-center mx-auto font-bold text-xl font-poppins mb-4 
group-hover:scale-110 transition-transform duration-300 relative z-10">
              {{ step.step }}
            </div>
            
            <!-- Step Icon -->
            <div class="w-12 h-12 bg-white border-4 border-blue-600 rounded-full flex items-center justify-center mx-auto -mt-6 relative z-20">
              <i [class]="step.icon + ' text-blue-600'"></i>
            </div>

            <!-- Connector Line (except last item) -->
            <div 
              *ngIf="i < processSteps.length - 1"
              class="hidden lg:block absolute top-8 left-1/2 w-full h-0.5 bg-gray-300 transform translate-x-1/2 -z-10">
              <div class="h-full bg-blue-600 transform scale-x-0 group-hover:scale-x-100 transition-transform duration-500 origin-left"></div>
            </div>
          </div>

          <!-- Step Content -->
          <h4 class="text-xl font-bold mb-3 text-gray-800 font-poppins group-hover:text-blue-600 transition-colors duration-300">
            {{ step.title }}
          </h4>
          <p class="text-gray-600 font-inter leading-relaxed mb-3">
            {{ step.description }}
          </p>
          <div class="inline-flex items-center bg-gray-100 text-gray-600 px-3 py-1 rounded-full text-sm font-medium font-inter">
            <i class="fas fa-calendar-alt mr-2"></i>
            {{ step.duration }}
          </div>
        </div>
      </div>
    </div>

    <!-- Why Choose Us Section -->
    <div class="bg-gray-50 rounded-3xl p-8 md:p-12 mb-20 animate-on-scroll opacity-0">
      <div class="text-center mb-12">
        <h3 class="text-3xl font-bold text-gray-800 mb-4 font-poppins">Why Choose FusionWare?</h3>
        <p class="text-gray-600 font-inter max-w-3xl mx-auto">
          We combine technical expertise with deep understanding of African markets to deliver solutions that truly make a difference.
        </p>
      </div>

      <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
        <div class="text-center group">
          <div class="w-16 h-16 bg-blue-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 
transition-all duration-300">
            <i class="fas fa-award text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">Quality Assurance</h4>
          <p class="text-gray-600 font-inter text-sm">Rigorous testing and code reviews ensure bug-free, high-performance applications.</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-green-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 
transition-all duration-300">
            <i class="fas fa-clock text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">On-Time Delivery</h4>
          <p class="text-gray-600 font-inter text-sm">We respect deadlines and deliver projects on schedule without compromising quality.</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-purple-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 
transition-all duration-300">
            <i class="fas fa-handshake text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">Ongoing Support</h4>
          <p class="text-gray-600 font-inter text-sm">Comprehensive maintenance and support to keep your systems running smoothly.</p>
        </div>

        <div class="text-center group">
          <div class="w-16 h-16 bg-amber-600 text-white rounded-2xl flex items-center justify-center mx-auto mb-4 group-hover:scale-110 group-hover:rotate-6 
transition-all duration-300">
            <i class="fas fa-globe-africa text-2xl"></i>
          </div>
          <h4 class="text-lg font-bold mb-2 text-gray-800 font-poppins">Local Expertise</h4>
          <p class="text-gray-600 font-inter text-sm">Deep understanding of African markets, regulations, and business needs.</p>
        </div>
      </div>
    </div>

    <!-- Call to Action -->
    <div class="text-center bg-gradient-to-r from-blue-600 to-blue-800 rounded-3xl p-12 text-white animate-on-scroll opacity-0">
      <h3 class="text-3xl font-bold mb-4 font-poppins">Ready to Transform Your Business?</h3>
      <p class="text-xl mb-8 opacity-90 font-inter max-w-3xl mx-auto">
        Let's discuss your project requirements and create a custom solution that drives your business forward.
      </p>
      <div class="flex flex-col sm:flex-row gap-4 justify-center">
        <button class="bg-amber-500 text-gray-900 px-8 py-4 rounded-2xl font-semibold hover:bg-amber-400 transition-all duration-300 hover:scale-105 shadow-lg 
font-inter">
          Schedule Consultation
        </button>
        <button class="border-2 border-white text-white px-8 py-4 rounded-2xl font-semibold hover:bg-white hover:text-blue-600 transition-all duration-300 
font-inter">
          View Portfolio
        </button>
      </div>
    </div>
  </div>
</section>

<!-- Service Detail Modal -->
<div 
  *ngIf="selectedService" 
  class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50"
  (click)="closeServiceDetail()">
  
  <div 
    class="bg-white rounded-3xl max-w-4xl w-full max-h-[90vh] overflow-y-auto"
    (click)="$event.stopPropagation()">
    
    <!-- Modal Header -->
    <div class="sticky top-0 bg-white border-b border-gray-200 p-6 rounded-t-3xl">
      <div class="flex justify-between items-center">
        <div class="flex items-center">
          <div 
            class="w-12 h-12 rounded-xl flex items-center justify-center mr-4"
            [ngClass]="selectedService.bgColor">
            <i [class]="selectedService.icon + ' text-xl ' + selectedService.iconColor"></i>
          </div>
          <div>
            <h3 class="text-2xl font-bold text-gray-800 font-poppins">{{ selectedService.title }}</h3>
            <p class="text-gray-600 font-inter">{{ selectedService.category }}</p>
          </div>
        </div>
        <button 
          (click)="closeServiceDetail()"
          class="w-10 h-10 bg-gray-100 hover:bg-gray-200 rounded-full flex items-center justify-center transition-colors duration-200">
          <i class="fas fa-times text-gray-600"></i>
        </button>
      </div>
    </div>

    <!-- Modal Content -->
    <div class="p-6">
      <!-- Description -->
      <div class="mb-8">
        <h4 class="text-lg font-semibold mb-3 text-gray-800 font-poppins">Service Overview</h4>
        <p class="text-gray-600 font-inter leading-relaxed">{{ selectedService.description }}</p>
      </div>

      <!-- Features & Technologies Grid -->
      <div class="grid md:grid-cols-2 gap-8 mb-8">
        <!-- Features -->
        <div>
          <h4 class="text-lg font-semibold mb-4 text-gray-800 font-poppins">Key Features</h4>
          <ul class="space-y-3">
            <li 
              *ngFor="let feature of selectedService.features"
              class="flex items-center text-gray-700 font-inter">
              <i class="fas fa-check-circle text-green-500 mr-3"></i>
              {{ feature }}
            </li>
          </ul>
        </div>

        <!-- Technologies -->
        <div>
          <h4 class="text-lg font-semibold mb-4 text-gray-800 font-poppins">Technologies Used</h4>
          <div class="flex flex-wrap gap-2">
            <span 
              *ngFor="let tech of selectedService.technologies"
              class="bg-blue-100 text-blue-800 px-3 py-2 rounded-lg text-sm font-medium font-inter">
              {{ tech }}
            </span>
          </div>
        </div>
      </div>

      <!-- Project Details -->
      <div class="bg-gray-50 rounded-2xl p-6 mb-8">
        <div class="grid md:grid-cols-2 gap-6">
          <div class="text-center">
            <i class="fas fa-dollar-sign text-2xl text-green-600 mb-2"></i>
            <h5 class="font-semibold text-gray-800 font-poppins">Investment</h5>
            <p class="text-gray-600 font-inter">{{ selectedService.price }}</p>
          </div>
          <div class="text-center">
            <i class="fas fa-calendar-alt text-2xl text-blue-600 mb-2"></i>
            <h5 class="font-semibold text-gray-800 font-poppins">Timeline</h5>
            <p class="text-gray-600 font-inter">{{ selectedService.duration }}</p>
          </div>
        </div>
      </div>

      <!-- Action Buttons -->
      <div class="flex flex-col sm:flex-row gap-4">
        <button 
          (click)="onContactForService(selectedService)"
          class="flex-1 bg-blue-600 text-white py-4 px-6 rounded-2xl font-semibold hover:bg-blue-700 transition-all duration-300 font-inter">
          <i class="fas fa-envelope mr-2"></i>
          Get Started
        </button>
        <button 
          (click)="onGetQuote(selectedService)"
          class="flex-1 border-2 border-blue-600 text-blue-600 py-4 px-6 rounded-2xl font-semibold hover:bg-blue-600 hover:text-white transition-all duration-300 
font-inter">
          <i class="fas fa-calculator mr-2"></i>
          Request Quote
        </button>
      </div>
    </div>
  </div>
</div>
EOF#!/bin/bash

# About Section Component Setup Script
echo "👥 Setting up About Section Component"
echo "===================================="

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "angular.json" ]; then
    echo "❌ Please run this script from the Angular project root directory"
    exit 1
fi

# Create about component
print_status "Generating about section component..."
ng generate component sections/about --skip-tests=true

# Create about component TypeScript file
print_status "Creating about component logic..."
cat > src/app/sections/about/about.component.ts << 'EOF'
import { Component, OnInit } from '@angular/core';
import { AboutService } from '../../services/about.service';

@Component({
  selector: 'app-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css']
})
export class AboutComponent implements OnInit {

  aboutItems = [
    {
      title: 'Our Mission',
      description: 'To empower African businesses with innovative, scalable software solutions that drive digital transformation and economic growth across the 
continent.',
      icon: 'fas fa-bullseye',
      iconColor: 'text-blue-600',
      bgColor: 'bg-blue-100',
      delay: '0s'
    },
    {
      title: 'Our Vision',
      description: 'To be the leading software development company in Africa, known for delivering world-class digital solutions that bridge the technology gap.',
      icon: 'fas fa-eye',
      iconColor: 'text-green-600',
      bgColor: 'bg-green-100',
      delay: '0.2s'
    },
    {
      title: 'Our Values',
      description: 'Innovation, Quality, Integrity, and Customer Success. We believe in building lasting partnerships through exceptional service and reliable 
solutions.',
      icon: 'fas fa-heart',
      iconColor: 'text-red-600',
      bgColor: 'bg-red-100',
      delay: '0.4s'
    }
  ];

  teamMembers = [
    {
      name: 'Lead Developer',
      role: 'Founder & Chief Technology Officer',
      description: 'Passionate software engineer with extensive experience in full-stack development, fintech solutions, and enterprise software architecture.',
      avatar: 'fas fa-user',
      skills: ['Full-Stack Development', 'System Architecture', 'Team Leadership', 'Project Management'],
      experience: '8+ Years'
    }
  ];

  companyStats = [
    { value: '50+', label: 'Projects Completed', icon: 'fas fa-project-diagram' },
    { value: '25+', label: 'Happy Clients', icon: 'fas fa-smile' },
    { value: '3+', label: 'Years Experience', icon: 'fas fa-calendar-alt' },
    { value: '100%', label: 'Success Rate', icon: 'fas fa-chart-line' }
  ];

  technologies = [
    { name: 'Angular', level: 95, color: 'bg-red-500' },
    { name: 'React', level: 90, color: 'bg-blue-500' },
    { name: 'Spring Boot', level: 88, color: 'bg-green-500' },
    { name: 'Node.js', level: 85, color: 'bg-yellow-500' },
    { name: 'Python', level: 80, color: 'bg-indigo-500' },
    { name: 'Cloud (AWS/Azure)', level: 82, color: 'bg-purple-500' }
  ];

  constructor(private aboutService: AboutService) { }

  ngOnInit(): void {
    this.initializeAnimations();
  }

  private initializeAnimations(): void {
    // Initialize intersection observer for scroll animations
    const observerOptions = {
      threshold: 0.1,
      rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          entry.target.classList.add('animate-fade-in-up');
        }
      });
    }, observerOptions);

    // Observe all animated elements
    setTimeout(() => {
      const animatedElements = document.querySelectorAll('.animate-on-scroll');
      animatedElements.forEach(element => {
        observer.observe(element);
      });
    }, 100);
  }

  onStatHover(stat: any): void {
    // Add hover effects or additional functionality
    console.log('Stat hovered:', stat);
  }

  onTechnologyClick(tech: any): void {
    // Handle technology click (could show more details)
    console.log('Technology clicked:', tech);
  }
}
EOF

# Create about component HTML template
print_status "Creating about component template..."
cat > src/app/sections/about/about.component.html << 'EOF'
<section id="about" class="py-20 bg-gray-50">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <!-- Section Header -->
    <div class="text-center mb-16 animate-on-scroll opacity-0">
      <h2 class="text-4xl md:text-5xl font-bold text-gray-800 mb-6 font-poppins">About FusionWare</h2>
      <div class="w-24 h-1 bg-amber-500 mx-auto mb-6"></div>
      <p class="text-xl text-gray-600 max-w-3xl mx-auto font-inter leading-relaxed">
        We are a leading software development company dedicated to transforming businesses 
        through innovative technology solutions that drive growth and efficiency.
      </p>
    </div>

    <!-- Mission, Vision, Values -->
    <div class="grid md:grid-cols-3 gap-8 mb-20">
      <div 
        *ngFor="let item of aboutItems; let i = index" 
        class="bg-white p-8 rounded-2xl shadow-lg hover:shadow-xl transition-all duration-300 hover:-translate-y-2 text-center group animate-on-scroll opacity-0"
        [style.animation-delay]="item.delay">
        <div 
          class="w-16 h-16 rounded-2xl flex items-center justify-center mx-auto mb-6 group-hover:scale-110 transition-transform duration-300"
          [ngClass]="item.bgColor">
          <i [class]="item.icon + ' text-2xl ' + item.iconColor"></i>
        </div>
        <h3 class="text-2xl font-bold mb-4 text-gray-800 font-poppins">{{ item.title }}</h3>
        <p class="text-gray-600 font-inter leading-relaxed">{{ item.description }}</p>
        
        <!-- Decorative element -->
        <div class="mt-6 w-12 h-1 bg-amber-400 mx-auto opacity-0 group-hover:opacity-100 transition-opacity duration-300"></div>
      </div>
    </div>

    <!-- Company Statistics -->
    <div class="mb-20 animate-on-scroll opacity-0">
      <div class="text-center mb-12">
        <h3 class="text-3xl font-bold text-gray-800 mb-4 font-poppins">Our Achievements</h3>
        <p class="text-gray-600 font-inter">Numbers that speak for our commitment and excellence</p>
      </div>
      
      <div class="grid grid-cols-2 md:grid-cols-4 gap-8">
        <div 
          *ngFor="let stat of companyStats; let i = index"
          (mouseenter)="onStatHover(stat)"
          class="text-center bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-all duration-300 hover:-translate-y-2 group cursor-pointer"
          [style.animation-delay]="(i * 0.1) + 's'">
          <div class="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center mx-auto mb-4 group-hover:bg-blue-200 transition-colors duration-300">
            <i [class]="stat.icon + ' text-blue-600'"></i>
          </div>
          <div class="text-3xl font-bold text-blue-600 mb-2 font-poppins counter">{{ stat.value }}</div>
          <div class="text-gray-600 font-inter text-sm">{{ stat.label }}</div>
        </div>
      </div>
    </div>

    <!-- Technology Skills -->
    <div class="mb-20 animate-on-scroll opacity-0">
      <div class="text-center mb-12">
        <h3 class="text-3xl font-bold text-gray-800 mb-4 font-poppins">Our Expertise</h3>
        <p class="text-gray-600 font-inter">Technologies we master to deliver exceptional solutions</p>
      </div>

      <div class="bg-white rounded-2xl p-8 shadow-lg">
        <div class="grid md:grid-cols-2 gap-8">
          <div 
            *ngFor="let tech of technologies; let i = index"
            (click)="onTechnologyClick(tech)"
            class="cursor-pointer group"
            [style.animation-delay]="(i * 0.1) + 's'">
            <div class="flex items-center justify-between mb-2">
              <span class="font-semibold text-gray-800 font-inter group-hover:text-blue-600 transition-colors duration-300">
                {{ tech.name }}
              </span>
              <span class="text-sm text-gray-500 font-inter">{{ tech.level }}%</span>
            </div>
            <div class="w-full bg-gray-200 rounded-full h-3 overflow-hidden">
              <div 
                [ngClass]="tech.color"
                class="h-3 rounded-full transition-all duration-1000 ease-out skill-bar"
                [style.width.%]="tech.level">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Team Section -->
    <div class="text-center animate-on-scroll opacity-0">
      <h3 class="text-3xl font-bold text-gray-800 mb-12 font-poppins">Meet Our Team</h3>
      
      <div class="grid md:grid-cols-1 gap-8 max-w-2xl mx-auto">
        <div 
          *ngFor="let member of teamMembers"
          class="bg-white rounded-2xl shadow-lg p-8 hover:shadow-xl transition-all duration-300 hover:-translate-y-2 group">
          
          <!-- Avatar -->
          <div class="w-32 h-32 bg-gradient-to-br from-blue-600 to-blue-800 rounded-2xl mx-auto mb-6 flex items-center justify-center group-hover:scale-105 
transition-transform duration-300">
            <i [class]="member.avatar + ' text-4xl text-white'"></i>
          </div>
          
          <!-- Member Info -->
          <h4 class="text-2xl font-bold mb-2 text-gray-800 font-poppins">{{ member.name }}</h4>
          <p class="text-blue-600 mb-4 font-semibold font-inter">{{ member.role }}</p>
          <p class="text-gray-600 font-inter mb-6 leading-relaxed">{{ member.description }}</p>
          
          <!-- Skills -->
          <div class="mb-6">
            <h5 class="font-semibold text-gray-800 mb-3 font-poppins">Key Skills</h5>
            <div class="flex flex-wrap gap-2 justify-center">
              <span 
                *ngFor="let skill of member.skills"
                class="bg-blue-100 text-blue-800 text-xs px-3 py-1 rounded-full font-medium font-inter hover:bg-blue-200 transition-colors duration-200">
                {{ skill }}
              </span>
            </div>
          </div>
          
          <!-- Experience Badge -->
          <div class="inline-flex items-center bg-amber-100 text-amber-800 px-4 py-2 rounded-full text-sm font-semibold font-inter">
            <i class="fas fa-award mr-2"></i>
            {{ member.experience }}
          </div>
        </div>
      </div>
    </div>

    <!-- Call to Action -->
    <div class="mt-16 text-center bg-blue-600 rounded-2xl p-12 text-white animate-on-scroll opacity-0">
      <h3 class="text-3xl font-bold mb-4 font-poppins">Ready to Work Together?</h3>
      <p class="text-xl mb-8 opacity-90 font-inter max-w-2xl mx-auto">
        Let's discuss how we can help transform your business with innovative software solutions.
      </p>
      <div class="flex flex-col sm:flex-row gap-4 justify-center">
        <button class="bg-amber-500 text-gray-900 px-8 py-4 rounded-2xl font-semibold hover:bg-amber-400 transition-all duration-300 hover:scale-105 shadow-lg 
font-inter">
          Start a Project
        </button>
        <button class="border-2 border-white text-white px-8 py-4 rounded-2xl font-semibold hover:bg-white hover:text-blue-600 transition-all duration-300 
font-inter">
          Learn More
        </button>
      </div>
    </div>
  </div>
</section>
EOF

# Create about component CSS
print_status "Creating about component styles..."
cat > src/app/sections/about/about.component.css << 'EOF'
/* About section animations */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in-up {
  animation: fadeInUp 0.6s ease-out forwards;
}

/* Skill bar animation */
.skill-bar {
  width: 0% !important;
  transition: width 2s ease-out;
}

.skill-bar.animate {
  width: var(--skill-level) !important;
}

/* Counter animation */
.counter {
  position: relative;
}

.counter::after {
  content: '';
  position: absolute;
  bottom: -2px;
  left: 50%;
  transform: translateX(-50%);
  width: 0;
  height: 2px;
  background: linear-gradient(90deg, #3B82F6, #1E3A8A);
  transition: width 0.3s ease;
}

.counter:hover::after {
  width: 100%;
}

/* Card hover effects */
.about-card {
  position: relative;
  overflow: hidden;
}

.about-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(59, 130, 246, 0.05), transparent);
  transition: left 0.5s ease;
}

.about-card:hover::before {
  left: 100%;
}

/* Team member card */
.team-card {
  background: linear-gradient(145deg, #ffffff, #f8fafc);
  border: 1px solid rgba(59, 130, 246, 0.1);
}

.team-card:hover {
  border-color: rgba(59, 130, 246, 0.3);
  box-shadow: 0 20px 25px -5px rgba(59, 130, 246, 0.1), 0 10px 10px -5px rgba(59, 130, 246, 0.04);
}

/* Avatar glow effect */
.avatar-glow {
  position: relative;
}

.avatar-glow::before {
  content: '';
  position: absolute;
  top: -4px;
  left: -4px;
  right: -4px;
  bottom: -4px;
  background: linear-gradient(45deg, #3B82F6, #1E3A8A, #60A5FA, #3B82F6);
  border-radius: inherit;
  z-index: -1;
  opacity: 0;
  transition: opacity 0.3s ease;
  animation: rotate-border 3s linear infinite;
}

.avatar-glow:hover::before {
  opacity: 1;
}

@keyframes rotate-border {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}

/* Statistics section */
.stats-grid {
  background: linear-gradient(135deg, #f8fafc 0%, #ffffff 100%);
}

.stat-item {
  position: relative;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.stat-item::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 0;
  height: 3px;
  background: linear-gradient(90deg, #3B82F6, #60A5FA);
  transition: width 0.3s ease;
  border-radius: 2px;
}

.stat-item:hover::after {
  width: 50%;
}

/* Technology skills */
.tech-item {
  position: relative;
  padding: 1rem;
  border-radius: 0.5rem;
  transition: all 0.3s ease;
}

.tech-item:hover {
  background: rgba(59, 130, 246, 0.05);
  transform: translateX(4px);
}

.tech-item::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 3px;
  background: linear-gradient(to bottom, transparent, var(--tech-color, #3B82F6), transparent);
  border-radius: 0 2px 2px 0;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.tech-item:hover::before {
  opacity: 1;
}

/* Progress bar enhancements */
.progress-container {
  position: relative;#!/bin/bash

# Contact Section Component Setup Script
echo "📧 Setting up Contact Section Component"
echo "======================================"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "angular.json" ]; then
    echo "❌ Please run this script from the Angular project root directory"
    exit 1
fi

# Create contact component
print_status "Generating contact section component..."
ng generate component sections/contact --skip-tests=true

# Create contact component TypeScript file
print_status "Creating contact component logic..."
cat > src/app/sections/contact/contact.component.ts << 'EOF'
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ContactService } from '../../services/contact.service';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.css']
})
export class ContactComponent implements OnInit {
  contactForm: FormGroup;
  isSubmitting = false;
  submitMessage = '';
  submitSuccess = false;

  contactInfo = [
    {
      title: 'Email',
      details: ['info@fusionwaretechnologies.com', 'contact@fusionwaretechnologies.com'],
      icon: 'fas fa-envelope',
      iconColor: 'text-blue-600',
      bgColor: 'bg-blue-100'
    },
    {
      title: 'Phone',
      details: ['+254 123 456 789', '+254 987 654 321'],
      icon: 'fas fa-phone',
      iconColor: 'text-green-600',
      bgColor: 'bg-green-100'
    },
    {
      title: 'Address',
      details: ['Nairobi, Kenya', 'East Africa'],
      icon: 'fas fa-map-marker-alt',
      iconColor: 'text-purple-600',
      bgColor: 'bg-purple-100'
    },
    {
      title: 'Business Hours',
      details: ['Mon - Fri: 8:00 AM - 6:00 PM', 'Sat: 9:00 AM - 4:00 PM'],
      icon: 'fas fa-clock',
      iconColor: 'text-amber-600',
      bgColor: 'bg-amber-100'
    }
  ];

  socialLinks = [
    { 
      icon: 'fab fa-linkedin', 
      url: 'https://linkedin.com/company/fusionware-technologies',
      name: 'LinkedIn'
    },
    { 
      icon: 'fab fa-twitter', 
      url: 'https://twitter.com/fusionware_tech',
      name: 'Twitter'
    },
    { 
      icon: 'fab fa-github', 
      url: 'https://github.com/fusionware-technologies',
      name: 'GitHub'
    },
    { 
      icon: 'fab fa-facebook', 
      url: 'https://facebook.com/fusionwaretechnologies',
      name: 'Facebook'
    }
  ];

  constructor(
    private fb: FormBuilder,
    private contactService: ContactService
  ) {
    this.contactForm = this.fb.group({
      name: ['', [Validators.required, Validators.minLength(2)]],
      email: ['', [Validators.required, Validators.email]],
      subject: ['', [Validators.required, Validators.minLength(5)]],
      message: ['', [Validators.required, Validators.minLength(10)]],
      phone: ['', [Validators.pattern(/^[+]?[\d\s\-\(\)]+$/)]],
      company: ['']
    });
  }

  ngOnInit(): void {
    this.setupFormValidation();
  }

  async onSubmit() {
    if (this.contactForm.valid && !this.isSubmitting) {
      this.isSubmitting = true;
      this.submitMessage = '';

      try {
        const formData = this.contactForm.value;
        
        // Call the contact service
        await this.contactService.sendMessage(formData).toPromise();
        
        this.submitSuccess = true;
        this.submitMessage = 'Thank you! Your message has been sent successfully. We\'ll get back to you within 24 hours.';
        this.contactForm.reset();
      } catch (error) {
        this.submitSuccess = false;
        this.submitMessage = 'Sorry, there was an error sending your message. Please try again or contact us directly.';
        console.error('Contact form error:', error);
      } finally {
        this.isSubmitting = false;
        setTimeout(() => {
          this.submitMessage = '';
        }, 8000);
      }
    } else {
      this.markFormGroupTouched();
    }
  }

  private setupFormValidation() {
    // Add custom validators or form setup logic here
    this.contactForm.get('email')?.valueChanges.subscribe(value => {
      if (value) {
        this.contactForm.get('email')?.setErrors(
          this.isValidEmail(value) ? null : { invalidEmail: true }
        );
      }
    });
  }

  private isValidEmail(email: string): boolean {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
  }

  private markFormGroupTouched() {
    Object.keys(this.contactForm.controls).forEach(key => {
      const control = this.contactForm.get(key);
      control?.markAsTouched();
    });
  }

  getFieldError(fieldName: string): string {
    const field = this.contactForm.get(fieldName);
    
    if (field?.errors && field.touched) {
      if (field.errors['required']) {
        return `${this.getFieldDisplayName(fieldName)} is required`;
      }
      if (field.errors['minlength']) {
        const minLength = field.errors['minlength'].requiredLength;
        return `${this.getFieldDisplayName(fieldName)} must be at least ${minLength} characters`;
      }
      if (field.errors['email'] || field.errors['invalidEmail']) {
        return 'Please enter a valid email address';
      }
      if (field.errors['pattern']) {
        return 'Please enter a valid phone number';
      }
    }
    
    return '';
  }

  private getFieldDisplayName(fieldName: string): string {
    const displayNames: { [key: string]: string } = {
      name: 'Full Name',
      email: 'Email Address',
      subject: 'Subject',
      message: 'Message',
      phone: 'Phone Number',
      company: 'Company'
    };
    
    return displayNames[fieldName] || fieldName;
  }

  hasFieldError(fieldName: string): boolean {
    const field = this.contactForm.get(fieldName);
    return !!(field?.errors && field.touched);
  }
}
EOF

# Create contact component HTML template
print_status "Creating contact component template..."
cat > src/app/sections/contact/contact.component.html << 'EOF'
<section id="contact" class="py-20 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <!-- Section Header -->
    <div class="text-center mb-16">
      <h2 class="text-4xl md:text-5xl font-bold text-gray-800 mb-6 font-poppins">Get In Touch</h2>
      <div class="w-24 h-1 bg-amber-500 mx-auto mb-6"></div>
      <p class="text-xl text-gray-600 max-w-3xl mx-auto font-inter">
        Ready to start your next project? We'd love to hear from you and discuss how we can help transform your business.
      </p>
    </div>

    <div class="grid lg:grid-cols-2 gap-12">
      <!-- Contact Form -->
      <div class="order-2 lg:order-1">
        <div class="bg-gray-50 rounded-2xl p-8 shadow-lg">
          <h3 class="text-2xl font-bold text-gray-800 mb-6 font-poppins">Send us a message</h3>
          
          <form [formGroup]="contactForm" (ngSubmit)="onSubmit()" class="space-y-6">
            <!-- Name and Email Row -->
            <div class="grid md:grid-cols-2 gap-4">
              <div>
                <label class="block text-gray-700 text-sm font-semibold mb-2 font-inter">
                  Full Name <span class="text-red-500">*</span>
                </label>
                <input 
                  type="text" 
                  formControlName="name"
                  [class.border-red-300]="hasFieldError('name')"
                  [class.border-green-300]="contactForm.get('name')?.valid && contactForm.get('name')?.touched"
                  class="w-full px-4 py-3 border-2 border-gray-200 rounded-2xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-300 
font-inter"
                  placeholder="Enter your full name">
                <div *ngIf="getFieldError('name')" class="text-red-500 text-sm mt-1">
                  {{ getFieldError('name') }}
                </div>
              </div>
              
              <div>
                <label class="block text-gray-700 text-sm font-semibold mb-2 font-inter">
                  Email Address <span class="text-red-500">*</span>
                </label>
                <input 
                  type="email" 
                  formControlName="email"
                  [class.border-red-300]="hasFieldError('email')"
                  [class.border-green-300]="contactForm.get('email')?.valid && contactForm.get('email')?.touched"
                  class="w-full px-4 py-3 border-2 border-gray-200 rounded-2xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-300 
font-inter"
                  placeholder="Enter your email">
                <div *ngIf="getFieldError('email')" class="text-red-500 text-sm mt-1">
                  {{ getFieldError('email') }}
                </div>
              </div>
            </div>

            <!-- Phone and Company Row -->
            <div class="grid md:grid-cols-2 gap-4">
              <div>
                <label class="block text-gray-700 text-sm font-semibold mb-2 font-inter">Phone Number</label>
                <input 
                  type="tel" 
                  formControlName="phone"
                  [class.border-red-300]="hasFieldError('phone')"
                  class="w-full px-4 py-3 border-2 border-gray-200 rounded-2xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-300 
font-inter"
                  placeholder="+254 123 456 789">
                <div *ngIf="getFieldError('phone')" class="text-red-500 text-sm mt-1">
                  {{ getFieldError('phone') }}
                </div>
              </div>
              
              <div>
                <label class="block text-gray-700 text-sm font-semibold mb-2 font-inter">Company</label>
                <input 
                  type="text" 
                  formControlName="company"
                  class="w-full px-4 py-3 border-2 border-gray-200 rounded-2xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-300 
font-inter"
                  placeholder="Your company name">
              </div>
            </div>
            
            <!-- Subject -->
            <div>
              <label class="block text-gray-700 text-sm font-semibold mb-2 font-inter">
                Subject <span class="text-red-500">*</span>
              </label>
              <input 
                type="text" 
                formControlName="subject"
                [class.border-red-300]="hasFieldError('subject')"
                [class.border-green-300]="contactForm.get('subject')?.valid && contactForm.get('subject')?.touched"
                class="w-full px-4 py-3 border-2 border-gray-200 rounded-2xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-300 
font-inter"
                placeholder="What can we help you with?">
              <div *ngIf="getFieldError('subject')" class="text-red-500 text-sm mt-1">
                {{ getFieldError('subject') }}
              </div>
            </div>
            
            <!-- Message -->
            <div>
              <label class="block text-gray-700 text-sm font-semibold mb-2 font-inter">
                Message <span class="text-red-500">*</span>
              </label>
              <textarea 
                rows="6" 
                formControlName="message"
                [class.border-red-300]="hasFieldError('message')"
                [class.border-green-300]="contactForm.get('message')?.valid && contactForm.get('message')?.touched"
                class="w-full px-4 py-3 border-2 border-gray-200 rounded-2xl focus:ring-2 focus:ring-blue-500 focus:border-blue-500 transition-all duration-300 
resize-none font-inter"
                placeholder="Tell us about your project, requirements, timeline, and budget..."></textarea>
              <div *ngIf="getFieldError('message')" class="text-red-500 text-sm mt-1">
                {{ getFieldError('message') }}
              </div>
            </div>
            
            <!-- Submit Button -->
            <button 
              type="submit" 
              [disabled]="isSubmitting || contactForm.invalid"
              class="w-full bg-amber-500 text-gray-900 py-4 px-6 rounded-2xl hover:bg-amber-400 disabled:opacity-50 disabled:cursor-not-allowed transition-all 
duration-300 font-semibold font-inter group">
              <span *ngIf="!isSubmitting" class="flex items-center justify-center">
                Send Message
                <i class="fas fa-paper-plane ml-2 transform transition-transform group-hover:translate-x-1"></i>
              </span>
              <span *ngIf="isSubmitting" class="flex items-center justify-center">
                <i class="fas fa-spinner animate-spin mr-2"></i>
                Sending...
              </span>
            </button>
          </form>

          <!-- Success/Error Messages -->
          <div 
            *ngIf="submitMessage" 
            class="mt-6 p-4 rounded-2xl transition-all duration-300"
            [class.bg-green-100]="submitSuccess"
            [class.text-green-800]="submitSuccess"
            [class.border-green-200]="submitSuccess"
            [class.bg-red-100]="!submitSuccess"
            [class.text-red-800]="!submitSuccess"
            [class.border-red-200]="!submitSuccess"
            style="border-width: 1px;">
            <div class="flex items-center">
              <i [class]="submitSuccess ? 'fas fa-check-circle text-green-600' : 'fas fa-exclamation-circle text-red-600'" class="mr-3 text-lg"></i>
              <p class="font-inter">{{ submitMessage }}</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Contact Information -->
      <div class="order-1 lg:order-2">
        <div class="bg-gray-50 rounded-2xl p-8 shadow-lg">
          <h3 class="text-2xl font-bold text-gray-800 mb-8 font-poppins">Contact Information</h3>
          
          <div class="space-y-6 mb-8">
            <div 
              *ngFor="let contact of contactInfo" 
              class="flex items-start group cursor-pointer hover:bg-white rounded-xl p-3 transition-all duration-300">
              <div 
                class="w-12 h-12 rounded-2xl flex items-center justify-center mr-4 flex-shrink-0 group-hover:scale-110 transition-transform duration-300"
                [ngClass]="contact.bgColor">
                <i [class]="contact.icon + ' ' + contact.iconColor"></i>
              </div>
              <div>
                <h4 class="font-semibold text-gray-800 mb-1 font-poppins">{{ contact.title }}</h4>
                <p *ngFor="let item of contact.details" class="text-gray-600 font-inter text-sm">{{ item }}</p>
              </div>
            </div>
          </div>

          <!-- Social Links -->
          <div>
            <h4 class="font-semibold text-gray-800 mb-4 font-poppins">Follow Us</h4>
            <div class="flex space-x-4">
              <a 
                *ngFor="let social of socialLinks" 
                [href]="social.url" 
                target="_blank"
                rel="noopener noreferrer"
                [title]="social.name"
                class="w-12 h-12 bg-gray-200 rounded-xl flex items-center justify-center text-gray-600 hover:bg-blue-600 hover:text-white transition-all 
duration-300 hover:scale-110">
                <i [class]="social.icon"></i>
              </a>
            </div>
          </div>

          <!-- Quick Response Promise -->
          <div class="mt-8 p-4 bg-blue-50 rounded-xl border border-blue-200">
            <div class="flex items-center text-blue-800">
              <i class="fas fa-clock mr-3 text-blue-600"></i>
              <div>
                <h5 class="font-semibold font-poppins">Quick Response Guarantee</h5>
                <p class="text-sm font-inter">We respond to all inquiries within 24 hours</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Additional Info Section -->
    <div class="mt-16 grid md:grid-cols-3 gap-8">
      <div class="text-center">
        <div class="w-16 h-16 bg-blue-100 rounded-2xl flex items-center justify-center mx-auto mb-4">
          <i class="fas fa-headset text-2xl text-blue-600"></i>
        </div>
        <h4 class="text-lg font-semibold text-gray-800 mb-2 font-poppins">24/7 Support</h4>
        <p class="text-gray-600 font-inter">Round-the-clock technical support for all our clients</p>
      </div>
      
      <div class="text-center">
        <div class="w-16 h-16 bg-green-100 rounded-2xl flex items-center justify-center mx-auto mb-4">
          <i class="fas fa-rocket text-2xl text-green-600"></i>
        </div>
        <h4 class="text-lg font-semibold text-gray-800 mb-2 font-poppins">Fast Delivery</h4>
        <p class="text-gray-600 font-inter">Quick turnaround times without compromising quality</p>
      </div>
      
      <div class="text-center">
        <div class="w-16 h-16 bg-purple-100 rounded-2xl flex items-center justify-center mx-auto mb-4">
          <i class="fas fa-shield-alt text-2xl text-purple-600"></i>
        </div>
        <h4 class="text-lg font-semibold text-gray-800 mb-2 font-poppins">Secure & Reliable</h4>
        <p class="text-gray-600 font-inter">Enterprise-grade security and reliability standards</p>
      </div>
    </div>
  </div>
</section>
EOF

# Create contact component CSS
print_status "Creating contact component styles..."
cat > src/app/sections/contact/contact.component.css << 'EOF'
/* Contact form styles */
.contact-form {
  background: linear-gradient(145deg, #f9fafb, #ffffff);
}

/* Form input focus effects */
.form-input:focus {
  box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
  border-color: #3B82F6;
}

.form-input.border-red-300:focus {
  box-shadow: 0 0 0 3px rgba(239, 68, 68, 0.1);
  border-color: #EF4444;
}

.form-input.border-green-300:focus {
  box-shadow: 0 0 0 3px rgba(34, 197, 94, 0.1);
  border-color: #22C55E;
}

/* Animated submit button */
.submit-btn {
  background: linear-gradient(135deg, #f59e0b, #d97706);
  position: relative;
  overflow: hidden;
}

.submit-btn::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
  transition: left 0.5s;
}

.submit-btn:hover::before {
  left: 100%;
}

/* Contact info hover effects */
.contact-info-item {
  transition: all 0.3s ease;
}

.contact-info-item:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

/* Social links animation */
.social-link {
  position: relative;
  overflow: hidden;
}

.social-link::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 0;
  height: 100%;
  background: linear-gradient(135deg, #3B82F6, #1E3A8A);
  transition: width 0.3s ease;
  z-index: -1;
}

.social-link:hover::before {
  width: 100%;
}

/* Form validation styles */
.field-error {
  animation: shake 0.5s ease-in-out;
}

@keyframes shake {
  0%, 100% { transform: translateX(0); }
  25% { transform: translateX(-5px); }
  75% { transform: translateX(5px); }
}

/* Success/Error message animation */
.message-slide-in {
  animation: slideInFromTop 0.3s ease-out;
}

@keyframes slideInFromTop {
  from {
    opacity: 0;
    transform: translateY(-20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Textarea auto-resize */
.form-textarea {
  resize: vertical;
  min-height: 120px;
}

/* Loading spinner for submit button */
.spinner {
  animation: spin 1s linear infinite;
}

@keyframes spin {
  from { transform: rotate(0deg); }
  to { transform: rotate(360deg); }
}

/* Floating labels effect */
.floating-label {
  position: relative;
}

.floating-label input:focus + label,
.floating-label input:not(:placeholder-shown) + label {
  transform: translateY(-25px) scale(0.8);
  color: #3B82F6;
}

.floating-label label {
  position: absolute;
  left: 16px;
  top: 16px;
  transition: all 0.3s ease;
  pointer-events: none;
  background: white;
  padding: 0 4px;
}

/* Contact card hover effects */
.contact-card {
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.contact-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
}

/* Icon bounce animation */
.icon-bounce:hover {
  animation: bounce-icon 0.6s ease;
}

@keyframes bounce-icon {
  0%, 20%, 50%, 80%, 100% {
    transform: translateY(0);
  }
  40% {
    transform: translateY(-10px);
  }
  60% {
    transform: translateY(-5px);
  }
}

/* Progress bar for form completion */
.form-progress {
  height: 4px;
  background: #e5e7eb;
  border-radius: 2px;
  overflow: hidden;
}

.form-progress-bar {
  height: 100%;
  background: linear-gradient(90deg, #3B82F6, #1E3A8A);
  transition: width 0.3s ease;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .contact-form,
  .contact-info {
    margin: 0;
    border-radius: 1rem;
  }
  
  .section-title {
    font-size: 2.5rem;
  }
  
  .contact-grid {
    grid-template-columns: 1fr;
    gap: 2rem;
  }
}

@media (max-width: 480px) {
  .form-grid {
    grid-template-columns: 1fr;
  }
  
  .contact-info-grid {
    grid-template-columns: 1fr;
  }
  
  .social-links {
    justify-content: center;
  }
}

/* Dark mode support */
@media (prefers-color-scheme: dark) {
  .contact-form,
  .contact-info {
    background: #1f2937;
    color: #f9fafb;
  }
  
  .form-input {
    background: #374151;
    border-color: #4b5563;
    color: #f9fafb;
  }
  
  .form-input:focus {
    border-color: #60a5fa;
  }
}

/* Print styles */
@media print {
  .contact-form {
    box-shadow: none;
    border: 1px solid #e5e7eb;
  }
  
  .social-links,
  .submit-btn {
    display: none;
  }
}

/* High contrast mode */
@media (prefers-contrast: high) {
  .form-input {
    border-width: 2px;
    border-color: #000;
  }
  
  .submit-btn {
    background: #000;
    color: #fff;
    border: 2px solid #000;
  }
}

/* Reduced motion */
@media (prefers-reduced-motion: reduce) {
  .contact-card,
  .icon-bounce,
  .form-progress-bar,
  .submit-btn::before {
    transition: none;
    animation: none;
  }
}
EOF

print_status "Creating enhanced contact service..."
cat > src/app/services/contact.service.ts << 'EOF'
import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable, of, throwError } from 'rxjs';
import { catchError, delay, tap } from 'rxjs/operators';

export interface ContactFormData {
  name: string;
  email: string;
  subject: string;
  message: string;
  phone?: string;
  company?: string;
}

export interface ContactResponse {
  success: boolean;
  message: string;
  id?: string;
}

export interface ContactInfo {
  title: string;
  details: string[];
  icon: string;
  iconColor: string;
  bgColor: string;
}

@Injectable({
  providedIn: 'root'
})
export class ContactService {
  private apiUrl = 'http://localhost:8080/api'; // Replace with your backend URL
  private readonly headers = new HttpHeaders({
    'Content-Type': 'application/json'
  });

  constructor(private http: HttpClient) { }

  sendMessage(formData: ContactFormData): Observable<ContactResponse> {
    // For development, simulate API call
    if (this.isDevMode()) {
      return this.simulateApiCall(formData);
    }

    return this.http.post<ContactResponse>(`${this.apiUrl}/contact`, formData, { 
      headers: this.headers 
    }).pipe(
      tap(response => {
        if (response.success) {
          console.log('Message sent successfully:', response.id);
        }
      }),
      catchError(this.handleError)
    );
  }

  getContactInfo(): Observable<ContactInfo[]> {
    const contactInfo: ContactInfo[] = [
      {
        title: 'Email',
        details: ['info@fusionwaretechnologies.com', 'contact@fusionwaretechnologies.com'],
        icon: 'fas fa-envelope',
        iconColor: 'text-blue-600',
        bgColor: 'bg-blue-100'
      },
      {
        title: 'Phone',
        details: ['+254 123 456 789', '+254 987 654 321'],
        icon: 'fas fa-phone',
        iconColor: 'text-green-600',
        bgColor: 'bg-green-100'
      },
      {
        title: 'Address',
        details: ['Nairobi, Kenya', 'East Africa'],
        icon: 'fas fa-map-marker-alt',
        iconColor: 'text-purple-600',
        bgColor: 'bg-purple-100'
      },
      {
        title: 'Business Hours',
        details: ['Mon - Fri: 8:00 AM - 6:00 PM', 'Sat: 9:00 AM - 4:00 PM'],
        icon: 'fas fa-clock',
        iconColor: 'text-amber-600',
        bgColor: 'bg-amber-100'
      }
    ];

    return of(contactInfo);
  }

  private simulateApiCall(formData: ContactFormData): Observable<ContactResponse> {
    // Simulate network delay
    return of({
      success: true,
      message: 'Message sent successfully',
      id: this.generateId()
    }).pipe(
      delay(2000), // 2 second delay to simulate network request
      tap(() => {
        console.log('Simulated API call - Form data:', formData);
      })
    );
  }

  private handleError(error: any): Observable<ContactResponse> {
    console.error('Contact service error:', error);
    
    let errorMessage = 'An unexpected error occurred. Please try again.';
    
    if (error.status === 0) {
      errorMessage = 'Unable to connect to server. Please check your internet connection.';
    } else if (error.status >= 400 && error.status < 500) {
      errorMessage = 'Invalid request. Please check your information and try again.';
    } else if (error.status >= 500) {
      errorMessage = 'Server error. Please try again later.';
    }

    return of({
      success: false,
      message: errorMessage
    });
  }

  private isDevMode(): boolean {
    return !environment.production;
  }

  private generateId(): string {
    return Math.random().toString(36).substr(2, 9);
  }

  // Additional utility methods
  validateEmail(email: string): boolean {
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailPattern.test(email);
  }

  validatePhone(phone: string): boolean {
    const phonePattern = /^[+]?[\d\s\-\(\)]+$/;
    return phonePattern.test(phone);
  }

  formatPhoneNumber(phone: string): string {
    // Remove all non-digits
    const cleaned = phone.replace(/\D/g, '');
    
    // Format based on length (assuming Kenyan numbers)
    if (cleaned.length === 10 && cleaned.startsWith('0')) {
      return `+254${cleaned.substring(1)}`;
    } else if (cleaned.length === 9) {
      return `+254${cleaned}`;
    } else if (cleaned.length === 12 && cleaned.startsWith('254')) {
      return `+${cleaned}`;
    }
    
    return phone; // Return original if can't format
  }
}

// Environment interface (you may need to create this)
declare const environment: {
  production: boolean;
};
EOF

print_status "Creating contact models..."
cat > src/app/models/contact.model.ts << 'EOF'
export interface ContactFormData {
  name: string;
  email: string;
  subject: string;
  message: string;
  phone?: string;
  company?: string;
  timestamp?: Date;
}

export interface ContactResponse {
  success: boolean;
  message: string;
  id?: string;
  timestamp?: Date;
}

export interface ContactInfo {
  title: string;
  details: string[];
  icon: string;
  iconColor: string;
  bgColor: string;
  action?: () => void;
}

export interface SocialLink {
  icon: string;
  url: string;
  name: string;
  color?: string;
}

export interface ContactConfig {
  showPhone: boolean;
  showCompany: boolean;
  requirePhone: boolean;
  requireCompany: boolean;
  maxMessageLength: number;
  enableFileUpload: boolean;
}

export enum ContactFormField {
  NAME = 'name',
  EMAIL = 'email',
  PHONE = 'phone',
  COMPANY = 'company',
  SUBJECT = 'subject',
  MESSAGE = 'message'
}

export interface FormValidationError {
  field: ContactFormField;
  message: string;
  type: 'required' | 'email' | 'minlength' | 'maxlength' | 'pattern';
}
EOF

print_status "✅ Contact section component setup complete!"
print_status "📁 Files created:"
echo "  - src/app/sections/contact/contact.component.ts"
echo "  - src/app/sections/contact/contact.component.html"
echo "  - src/app/sections/contact/contact.component.css"
echo "  - src/app/services/contact.service.ts"
echo "  - src/app/models/contact.model.ts"

print_status "🔧 Next steps:"
echo "  1. Import ContactComponent and ReactiveFormsModule in your app.module.ts"
echo "  2. Import HttpClientModule for the contact service"
echo "  3. Use <app-contact> in your app.component.html"
echo "  4. Configure your backend API endpoint in contact.service.ts"
echo ""
echo "💡 Usage example:"
echo '<app-contact></app-contact>'
echo ""
print_status "🛠️  Required module imports:"
echo "import { ReactiveFormsModule } from '@angular/forms';"
echo "import { HttpClientModule } from '@angular/common/http';"#!/bin/bash

# Hero Section Component Setup Script
echo "🚀 Setting up Hero Section Component"
echo "===================================="

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "angular.json" ]; then
    echo "❌ Please run this script from the Angular project root directory"
    exit 1
fi

# Create hero component
print_status "Generating hero section component..."
ng generate component sections/hero --skip-tests=true

# Create hero component TypeScript file
print_status "Creating hero component logic..."
cat > src/app/sections/hero/hero.component.ts << 'EOF'
import { Component, OnInit, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-hero',
  templateUrl: './hero.component.html',
  styleUrls: ['./hero.component.css']
})
export class HeroComponent implements OnInit {
  @Output() sectionClick = new EventEmitter<string>();

  heroContent = {
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
    ]
  };

  constructor() { }

  ngOnInit(): void {
    this.initializeAnimations();
  }

  scrollToSection(sectionId: string) {
    this.sectionClick.emit(sectionId);
  }

  private initializeAnimations() {
    // Initialize any scroll animations or intersection observers
    setTimeout(() => {
      const heroElements = document.querySelectorAll('.hero-animate');
      heroElements.forEach((element, index) => {
        setTimeout(() => {
          element.classList.add('animate-fade-in-up');
        }, index * 200);
      });
    }, 100);
  }
}
EOF

# Create hero component HTML template
print_status "Creating hero component template..."
cat > src/app/sections/hero/hero.component.html << 'EOF'
<section id="home" class="min-h-screen bg-gradient-to-br from-blue-800 to-blue-600 flex items-center justify-center relative overflow-hidden">
  <!-- Background Pattern -->
  <div class="absolute inset-0 opacity-10">
    <div class="absolute top-20 left-20 w-72 h-72 bg-white rounded-full animate-float"></div>
    <div class="absolute bottom-20 right-20 w-96 h-96 bg-amber-500 rounded-full animate-float" style="animation-delay: -2s;"></div>
    <div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-64 h-64 bg-white rounded-full animate-pulse opacity-5"></div>
  </div>

  <!-- Floating particles -->
  <div class="absolute inset-0 pointer-events-none">
    <div class="particle particle-1"></div>
    <div class="particle particle-2"></div>
    <div class="particle particle-3"></div>
    <div class="particle particle-4"></div>
    <div class="particle particle-5"></div>
  </div>

  <div class="relative z-10 text-center text-white px-4 max-w-6xl mx-auto">
    <!-- Main Title -->
    <h1 class="text-5xl md:text-7xl font-bold mb-6 font-poppins leading-tight hero-animate opacity-0">
      {{ heroContent.title.main }}
      <span class="text-amber-400 block gradient-text">{{ heroContent.title.highlight }}</span>
      {{ heroContent.title.subtitle }}
    </h1>
    
    <!-- Description -->
    <p class="text-xl md:text-2xl mb-8 max-w-4xl mx-auto font-inter opacity-90 hero-animate opacity-0" style="animation-delay: 0.2s;">
      {{ heroContent.description }}
    </p>
    
    <!-- Action Buttons -->
    <div class="flex flex-col sm:flex-row gap-4 justify-center items-center hero-animate opacity-0" style="animation-delay: 0.4s;">
      <button 
        *ngFor="let button of heroContent.buttons; let i = index"
        (click)="scrollToSection(button.action)"
        [class]="button.primary 
          ? 'bg-amber-500 text-gray-900 px-8 py-4 rounded-2xl text-lg font-semibold hover:bg-amber-400 transform hover:scale-105 transition-all duration-300 
shadow-lg font-inter'
          : 'border-2 border-white text-white px-8 py-4 rounded-2xl text-lg font-semibold hover:bg-white hover:text-blue-800 transition-all duration-300 
font-inter'">
        {{ button.text }}
        <i class="fas fa-arrow-right ml-2 transform transition-transform group-hover:translate-x-1" 
           *ngIf="button.primary"></i>
      </button>
    </div>

    <!-- Stats Section -->
    <div class="mt-16 hero-animate opacity-0" style="animation-delay: 0.6s;">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-3xl mx-auto">
        <div class="text-center">
          <div class="text-3xl md:text-4xl font-bold text-amber-400 mb-2 font-poppins">50+</div>
          <div class="text-lg opacity-90 font-inter">Projects Completed</div>
        </div>
        <div class="text-center">
          <div class="text-3xl md:text-4xl font-bold text-amber-400 mb-2 font-poppins">100%</div>
          <div class="text-lg opacity-90 font-inter">Client Satisfaction</div>
        </div>
        <div class="text-center">
          <div class="text-3xl md:text-4xl font-bold text-amber-400 mb-2 font-poppins">24/7</div>
          <div class="text-lg opacity-90 font-inter">Support Available</div>
        </div>
      </div>
    </div>
  </div>

  <!-- Scroll Indicator -->
  <div class="absolute bottom-8 left-1/2 transform -translate-x-1/2 animate-bounce cursor-pointer" 
       (click)="scrollToSection('about')">
    <div class="w-6 h-10 border-2 border-white rounded-full flex justify-center hover:border-amber-400 transition-colors duration-300">
      <div class="w-1 h-3 bg-white rounded-full mt-2 animate-pulse"></div>
    </div>
    <div class="text-white text-xs mt-2 opacity-70 font-inter">Scroll Down</div>
  </div>

  <!-- Social Proof -->
  <div class="absolute bottom-4 right-4 text-white opacity-60">
    <div class="flex items-center space-x-2 text-sm font-inter">
      <i class="fas fa-map-marker-alt"></i>
      <span>Nairobi, Kenya</span>
    </div>
  </div>
</section>
EOF

# Create hero component CSS
print_status "Creating hero component styles..."
cat > src/app/sections/hero/hero.component.css << 'EOF'
/* Hero section specific styles */
.gradient-text {
  background: linear-gradient(135deg, #fbbf24, #f59e0b, #d97706);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  animation: gradient-shift 3s ease-in-out infinite;
}

@keyframes gradient-shift {
  0%, 100% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
}

/* Floating animation */
@keyframes float {
  0%, 100% {
    transform: translateY(0px);
  }
  50% {
    transform: translateY(-20px);
  }
}

.animate-float {
  animation: float 6s ease-in-out infinite;
}

/* Particle animations */
.particle {
  position: absolute;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 50%;
  pointer-events: none;
  animation: float-particles 8s infinite linear;
}

.particle-1 {
  width: 8px;
  height: 8px;
  top: 20%;
  left: 10%;
  animation-delay: 0s;
}

.particle-2 {
  width: 12px;
  height: 12px;
  top: 60%;
  left: 20%;
  animation-delay: -2s;
}

.particle-3 {
  width: 6px;
  height: 6px;
  top: 40%;
  right: 10%;
  animation-delay: -4s;
}

.particle-4 {
  width: 10px;
  height: 10px;
  top: 80%;
  right: 30%;
  animation-delay: -6s;
}

.particle-5 {
  width: 14px;
  height: 14px;
  top: 10%;
  right: 20%;
  animation-delay: -1s;
}

@keyframes float-particles {
  0%, 100% {
    transform: translateY(0px) rotate(0deg);
    opacity: 0;
  }
  10%, 90% {
    opacity: 1;
  }
  50% {
    transform: translateY(-100px) rotate(180deg);
  }
}

/* Fade in up animation */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in-up {
  animation: fadeInUp 0.6s ease-out forwards;
}

/* Button hover effects */
.btn-primary {
  position: relative;
  overflow: hidden;
}

.btn-primary::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
  transition: left 0.5s;
}

.btn-primary:hover::before {
  left: 100%;
}

.btn-secondary {
  position: relative;
  overflow: hidden;
}

.btn-secondary::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 0;
  height: 100%;
  background: rgba(255, 255, 255, 0.1);
  transition: width 0.3s ease;
}

.btn-secondary:hover::before {
  width: 100%;
}

/* Scroll indicator animation */
.scroll-indicator {
  animation: bounce-gentle 2s infinite;
}

@keyframes bounce-gentle {
  0%, 20%, 50%, 80%, 100% {
    transform: translateY(0);
  }
  40% {
    transform: translateY(-10px);
  }
  60% {
    transform: translateY(-5px);
  }
}

/* Background pattern overlay */
.bg-pattern {
  background-image: 
    radial-gradient(circle at 25px 25px, rgba(255,255,255,0.2) 2px, transparent 0),
    radial-gradient(circle at 75px 75px, rgba(255,255,255,0.1) 1px, transparent 0);
  background-size: 100px 100px;
  animation: pattern-move 20s linear infinite;
}

@keyframes pattern-move {
  0% {
    background-position: 0 0;
  }
  100% {
    background-position: 100px 100px;
  }
}

/* Text shadow for better readability */
.text-shadow {
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
}

/* Stats animation */
.stat-number {
  animation: count-up 2s ease-out;
}

@keyframes count-up {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .hero-title {
    font-size: 2.5rem;
    line-height: 1.2;
  }
  
  .hero-subtitle {
    font-size: 1.125rem;
  }
  
  .particle {
    display: none;
  }
  
  .background-shapes {
    opacity: 0.05;
  }
}

@media (max-width: 480px) {
  .hero-title {
    font-size: 2rem;
  }
  
  .cta-buttons {
    flex-direction: column;
    width: 100%;
  }
  
  .cta-buttons button {
    width: 100%;
  }
}

/* High contrast mode support */
@media (prefers-contrast: high) {
  .gradient-text {
    -webkit-text-fill-color: #fbbf24;
    background: none;
  }
  
  .particle {
    display: none;
  }
}

/* Reduced motion support */
@media (prefers-reduced-motion: reduce) {
  .animate-float,
  .animate-bounce,
  .particle,
  .gradient-text {
    animation: none;
  }
  
  .animate-fade-in-up {
    opacity: 1;
    transform: none;
  }
}

/* Print styles */
@media print {
  .particle,
  .scroll-indicator {
    display: none;
  }
}
EOF

print_status "Creating hero service for content management..."
cat > src/app/services/hero.service.ts << 'EOF'
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
EOF

print_status "✅ Hero section component setup complete!"
print_status "📁 Files created:"
echo "  - src/app/sections/hero/hero.component.ts"
echo "  - src/app/sections/hero/hero.component.html"
echo "  - src/app/sections/hero/hero.component.css"
echo "  - src/app/services/hero.service.ts"

print_status "🔧 Next steps:"
echo "  1. Import HeroComponent in your app.module.ts"
echo "  2. Use <app-hero> in your app.component.html"
echo "  3. Bind the sectionClick output"
echo ""
echo "💡 Usage example:"
echo '<app-hero (sectionClick)="scrollToSection($event)"></app-hero>'#!/bin/bash

# Hero Section Component Setup Script
echo "🚀 Setting up Hero Section Component"
echo "===================================="

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "angular.json" ]; then
    echo "❌ Please run this script from the Angular project root directory"
    exit 1
fi

# Create hero component
print_status "Generating hero section component..."
ng generate component sections/hero --skip-tests=true

# Create hero component TypeScript file
print_status "Creating hero component logic..."
cat > src/app/sections/hero/hero.component.ts << 'EOF'
import { Component, OnInit, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-hero',
  templateUrl: './hero.component.html',
  styleUrls: ['./hero.component.css']
})
export class HeroComponent implements OnInit {
  @Output() sectionClick = new EventEmitter<string>();

  heroContent = {
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
    ]
  };

  constructor() { }

  ngOnInit(): void {
    this.initializeAnimations();
  }

  scrollToSection(sectionId: string) {
    this.sectionClick.emit(sectionId);
  }

  private initializeAnimations() {
    // Initialize any scroll animations or intersection observers
    setTimeout(() => {
      const heroElements = document.querySelectorAll('.hero-animate');
      heroElements.forEach((element, index) => {
        setTimeout(() => {
          element.classList.add('animate-fade-in-up');
        }, index * 200);
      });
    }, 100);
  }
}
EOF

# Create hero component HTML template
print_status "Creating hero component template..."
cat > src/app/sections/hero/hero.component.html << 'EOF'
<section id="home" class="min-h-screen bg-gradient-to-br from-blue-800 to-blue-600 flex items-center justify-center relative overflow-hidden">
  <!-- Background Pattern -->
  <div class="absolute inset-0 opacity-10">
    <div class="absolute top-20 left-20 w-72 h-72 bg-white rounded-full animate-float"></div>
    <div class="absolute bottom-20 right-20 w-96 h-96 bg-amber-500 rounded-full animate-float" style="animation-delay: -2s;"></div>
    <div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-64 h-64 bg-white rounded-full animate-pulse opacity-5"></div>
  </div>

  <!-- Floating particles -->
  <div class="absolute inset-0 pointer-events-none">
    <div class="particle particle-1"></div>
    <div class="particle particle-2"></div>
    <div class="particle particle-3"></div>
    <div class="particle particle-4"></div>
    <div class="particle particle-5"></div>
  </div>

  <div class="relative z-10 text-center text-white px-4 max-w-6xl mx-auto">
    <!-- Main Title -->
    <h1 class="text-5xl md:text-7xl font-bold mb-6 font-poppins leading-tight hero-animate opacity-0">
      {{ heroContent.title.main }}
      <span class="text-amber-400 block gradient-text">{{ heroContent.title.highlight }}</span>
      {{ heroContent.title.subtitle }}
    </h1>
    
    <!-- Description -->
    <p class="text-xl md:text-2xl mb-8 max-w-4xl mx-auto font-inter opacity-90 hero-animate opacity-0" style="animation-delay: 0.2s;">
      {{ heroContent.description }}
    </p>
    
    <!-- Action Buttons -->
    <div class="flex flex-col sm:flex-row gap-4 justify-center items-center hero-animate opacity-0" style="animation-delay: 0.4s;">
      <button 
        *ngFor="let button of heroContent.buttons; let i = index"
        (click)="scrollToSection(button.action)"
        [class]="button.primary 
          ? 'bg-amber-500 text-gray-900 px-8 py-4 rounded-2xl text-lg font-semibold hover:bg-amber-400 transform hover:scale-105 transition-all duration-300 
shadow-lg font-inter'
          : 'border-2 border-white text-white px-8 py-4 rounded-2xl text-lg font-semibold hover:bg-white hover:text-blue-800 transition-all duration-300 
font-inter'">
        {{ button.text }}
        <i class="fas fa-arrow-right ml-2 transform transition-transform group-hover:translate-x-1" 
           *ngIf="button.primary"></i>
      </button>
    </div>

    <!-- Stats Section -->
    <div class="mt-16 hero-animate opacity-0" style="animation-delay: 0.6s;">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 max-w-3xl mx-auto">
        <div class="text-center">
          <div class="text-3xl md:text-4xl font-bold text-amber-400 mb-2 font-poppins">50+</div>
          <div class="text-lg opacity-90 font-inter">Projects Completed</div>
        </div>
        <div class="text-center">
          <div class="text-3xl md:text-4xl font-bold text-amber-400 mb-2 font-poppins">100%</div>
          <div class="text-lg opacity-90 font-inter">Client Satisfaction</div>
        </div>
        <div class="text-center">
          <div class="text-3xl md:text-4xl font-bold text-amber-400 mb-2 font-poppins">24/7</div>
          <div class="text-lg opacity-90 font-inter">Support Available</div>
        </div>
      </div>
    </div>
  </div>

  <!-- Scroll Indicator -->
  <div class="absolute bottom-8 left-1/2 transform -translate-x-1/2 animate-bounce cursor-pointer" 
       (click)="scrollToSection('about')">
    <div class="w-6 h-10 border-2 border-white rounded-full flex justify-center hover:border-amber-400 transition-colors duration-300">
      <div class="w-1 h-3 bg-white rounded-full mt-2 animate-pulse"></div>
    </div>
    <div class="text-white text-xs mt-2 opacity-70 font-inter">Scroll Down</div>
  </div>

  <!-- Social Proof -->
  <div class="absolute bottom-4 right-4 text-white opacity-60">
    <div class="flex items-center space-x-2 text-sm font-inter">
      <i class="fas fa-map-marker-alt"></i>
      <span>Nairobi, Kenya</span>
    </div>
  </div>
</section>
EOF

# Create hero component CSS
print_status "Creating hero component styles..."
cat > src/app/sections/hero/hero.component.css << 'EOF'
/* Hero section specific styles */
.gradient-text {
  background: linear-gradient(135deg, #fbbf24, #f59e0b, #d97706);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  animation: gradient-shift 3s ease-in-out infinite;
}

@keyframes gradient-shift {
  0%, 100% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
}

/* Floating animation */
@keyframes float {
  0%, 100% {
    transform: translateY(0px);
  }
  50% {
    transform: translateY(-20px);
  }
}

.animate-float {
  animation: float 6s ease-in-out infinite;
}

/* Particle animations */
.particle {
  position: absolute;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 50%;
  pointer-events: none;
  animation: float-particles 8s infinite linear;
}

.particle-1 {
  width: 8px;
  height: 8px;
  top: 20%;
  left: 10%;
  animation-delay: 0s;
}

.particle-2 {
  width: 12px;
  height: 12px;
  top: 60%;
  left: 20%;
  animation-delay: -2s;
}

.particle-3 {
  width: 6px;
  height: 6px;
  top: 40%;
  right: 10%;
  animation-delay: -4s;
}

.particle-4 {
  width: 10px;
  height: 10px;
  top: 80%;
  right: 30%;
  animation-delay: -6s;
}

.particle-5 {
  width: 14px;
  height: 14px;
  top: 10%;
  right: 20%;
  animation-delay: -1s;
}

@keyframes float-particles {
  0%, 100% {
    transform: translateY(0px) rotate(0deg);
    opacity: 0;
  }
  10%, 90% {
    opacity: 1;
  }
  50% {
    transform: translateY(-100px) rotate(180deg);
  }
}

/* Fade in up animation */
@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in-up {
  animation: fadeInUp 0.6s ease-out forwards;
}

/* Button hover effects */
.btn-primary {
  position: relative;
  overflow: hidden;
}

.btn-primary::before {
  content: '';
  position: absolute;
  top: 0;
  left: -100%;
  width: 100%;
  height: 100%;
  background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
  transition: left 0.5s;
}

.btn-primary:hover::before {
  left: 100%;
}

.btn-secondary {
  position: relative;
  overflow: hidden;
}

.btn-secondary::before {
  content: '';
  position: absolute;#!/bin/bash

# Navigation Component Setup Script
echo "🧭 Setting up Navigation Component"
echo "=================================="

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_status() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

# Check if we're in the right directory
if [ ! -f "angular.json" ]; then
    echo "❌ Please run this script from the Angular project root directory"
    exit 1
fi

# Create navigation component
print_status "Generating navigation component..."
ng generate component shared/navigation --skip-tests=true

# Create navigation component TypeScript file
print_status "Creating navigation component logic..."
cat > src/app/shared/navigation/navigation.component.ts << 'EOF'
import { Component, OnInit, HostListener, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-navigation',
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.css']
})
export class NavigationComponent implements OnInit {
  @Input() activeSection = 'home';
  @Input() isNavbarScrolled = false;
  @Output() sectionClick = new EventEmitter<string>();
  @Output() mobileMenuToggle = new EventEmitter<void>();

  isMobileMenuOpen = false;

  navItems = [
    { id: 'home', label: 'Home' },
    { id: 'about', label: 'About' },
    { id: 'services', label: 'Services' },
    { id: 'portfolio', label: 'Portfolio' },
    { id: 'contact', label: 'Contact' }
  ];

  constructor() { }

  ngOnInit(): void { }

  scrollToSection(sectionId: string) {
    this.activeSection = sectionId;
    this.isMobileMenuOpen = false;
    this.sectionClick.emit(sectionId);
  }

  toggleMobileMenu() {
    this.isMobileMenuOpen = !this.isMobileMenuOpen;
    this.mobileMenuToggle.emit();
  }
}
EOF

# Create navigation component HTML template
print_status "Creating navigation component template..."
cat > src/app/shared/navigation/navigation.component.html << 'EOF'
<nav 
  class="fixed top-0 left-0 right-0 z-50 transition-all duration-300"
  [class.bg-white]="isNavbarScrolled"
  [class.bg-transparent]="!isNavbarScrolled"
  [class.shadow-lg]="isNavbarScrolled">
  
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="flex justify-between items-center py-4">
      <!-- Logo -->
      <div class="flex items-center cursor-pointer" (click)="scrollToSection('home')">
        <div class="w-10 h-10 bg-gradient-to-br from-blue-800 to-blue-600 rounded-lg flex items-center justify-center mr-3">
          <span class="text-white font-bold text-lg">F</span>
        </div>
        <span 
          class="text-xl font-bold transition-colors duration-300 font-poppins"
          [class.text-white]="!isNavbarScrolled"
          [class.text-gray-800]="isNavbarScrolled">
          FusionWare Technologies
        </span>
      </div>

      <!-- Desktop Navigation -->
      <div class="hidden md:flex space-x-8">
        <a 
          *ngFor="let item of navItems" 
          (click)="scrollToSection(item.id)"
          class="cursor-pointer font-medium transition-all duration-300 relative py-2 font-inter"
          [class.text-white]="!isNavbarScrolled && activeSection !== item.id"
          [class.text-gray-600]="isNavbarScrolled && activeSection !== item.id"
          [class.text-amber-500]="activeSection === item.id">
          {{ item.label }}
          <div 
            class="absolute bottom-0 left-0 w-full h-0.5 bg-amber-500 transform transition-transform duration-300"
            [class.scale-x-100]="activeSection === item.id"
            [class.scale-x-0]="activeSection !== item.id">
          </div>
        </a>
      </div>

      <!-- Mobile Menu Button -->
      <button 
        class="md:hidden p-2"
        (click)="toggleMobileMenu()"
        [class.text-white]="!isNavbarScrolled"
        [class.text-gray-800]="isNavbarScrolled">
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                [attr.d]="isMobileMenuOpen ? 'M6 18L18 6M6 6l12 12' : 'M4 6h16M4 12h16M4 18h16'"></path>
        </svg>
      </button>
    </div>

    <!-- Mobile Menu -->
    <div 
      class="md:hidden overflow-hidden transition-all duration-300 bg-white rounded-lg shadow-lg mt-2"
      [class.max-h-96]="isMobileMenuOpen"
      [class.max-h-0]="!isMobileMenuOpen">
      <div class="py-2" *ngIf="isMobileMenuOpen">
        <a 
          *ngFor="let item of navItems"
          (click)="scrollToSection(item.id)"
          class="block px-4 py-3 text-gray-700 hover:bg-blue-50 hover:text-blue-600 cursor-pointer font-inter transition-colors duration-200"
          [class.bg-blue-50]="activeSection === item.id"
          [class.text-blue-600]="activeSection === item.id">
          {{ item.label }}
        </a>
      </div>
    </div>
  </div>
</nav>
EOF

# Create navigation component CSS
print_status "Creating navigation component styles..."
cat > src/app/shared/navigation/navigation.component.css << 'EOF'
/* Navigation specific styles */
.nav-link {
  position: relative;
  overflow: hidden;
}

.nav-link::before {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #f59e0b, transparent);
  transform: translateX(-100%);
  transition: transform 0.3s ease;
}

.nav-link:hover::before {
  transform: translateX(100%);
}

/* Mobile menu animation */
.mobile-menu-enter {
  max-height: 0;
  opacity: 0;
}

.mobile-menu-enter-active {
  max-height: 384px; /* 24rem */
  opacity: 1;
  transition: max-height 0.3s ease, opacity 0.3s ease;
}

.mobile-menu-exit {
  max-height: 384px;
  opacity: 1;
}

.mobile-menu-exit-active {
  max-height: 0;
  opacity: 0;
  transition: max-height 0.3s ease, opacity 0.3s ease;
}

/* Logo animation */
.logo:hover {
  transform: scale(1.05);
  transition: transform 0.2s ease;
}

/* Active section indicator */
.section-indicator {
  position: relative;
}

.section-indicator.active::after {
  content: '';
  position: absolute;
  bottom: -4px;
  left: 50%;
  transform: translateX(-50%);
  width: 6px;
  height: 6px;
  background: #f59e0b;
  border-radius: 50%;
}

/* Responsive adjustments */
@media (max-width: 768px) {
  .company-name {
    font-size: 1rem;
  }
  
  .logo-icon {
    width: 2rem;
    height: 2rem;
  }
}

/* Smooth navbar transition */
.navbar-scrolled {
  backdrop-filter: blur(10px);
  -webkit-backdrop-filter: blur(10px);
}

/* Hamburger menu animation */
.hamburger-line {
  transition: all 0.3s ease;
  transform-origin: center;
}

.hamburger-open .hamburger-line:nth-child(1) {
  transform: rotate(45deg) translate(5px, 5px);
}

.hamburger-open .hamburger-line:nth-child(2) {
  opacity: 0;
}

.hamburger-open .hamburger-line:nth-child(3) {
  transform: rotate(-45deg) translate(7px, -6px);
}
EOF

# Create navigation interface/model
print_status "Creating navigation models..."
mkdir -p src/app/models
cat > src/app/models/navigation.model.ts << 'EOF'
export interface NavItem {
  id: string;
  label: string;
  icon?: string;
  external?: boolean;
  url?: string;
}

export interface NavigationConfig {
  items: NavItem[];
  logo: {
    text: string;
    icon?: string;
    url?: string;
  };
  mobileBreakpoint?: number;
}
EOF

print_status "✅ Navigation component setup complete!"
print_status "📁 Files created:"
echo "  - src/app/shared/navigation/navigation.component.ts"
echo "  - src/app/shared/navigation/navigation.component.html"
echo "  - src/app/shared/navigation/navigation.component.css"
echo "  - src/app/models/navigation.model.ts"

print_status "🔧 Next steps:"
echo "  1. Import NavigationComponent in your app.module.ts"
echo "  2. Use <app-navigation> in your app.component.html"
echo "  3. Bind the required inputs and outputs"
echo ""
echo "💡 Usage example:"
echo '<app-navigation 
  [activeSection]="activeSection" 
  [isNavbarScrolled]="isNavbarScrolled"
  (sectionClick)="scrollToSection($event)"
  (mobileMenuToggle)="onMobileMenuToggle()">
</app-navigation>'
