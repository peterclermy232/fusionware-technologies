import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-logo',
  standalone: true,
  imports: [CommonModule],
    templateUrl: './logo.component.html',
   styleUrls: ['./logo.component.css'],

})
export class LogoComponent implements OnInit {
  isAnimating = false;

  ngOnInit() {
    // Auto-animate on load
    setTimeout(() => {
      this.animateLogo();
    }, 1000);
  }

  animateLogo() {
    this.isAnimating = true;
    setTimeout(() => {
      this.isAnimating = false;
    }, 2000);
  }
}
