import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface ContactMessage {
  name: string;
  email: string;
  message: string;
}

@Injectable({
  providedIn: 'root'
})
export class ContactService {
  private apiUrl = 'http://localhost:8080/api'; // Backend URL

  constructor(private http: HttpClient) {}

  sendMessage(contactData: ContactMessage): Observable<any> {
    return this.http.post(`${this.apiUrl}/contact`, contactData);
  }
}
