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
