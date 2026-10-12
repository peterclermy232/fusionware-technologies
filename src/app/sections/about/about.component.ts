import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';

export interface TeamMember {
  name: string;
  role: string;
  // Photo path, e.g. 'team/peter.jpg' (place files in public/team/). Initials are shown when empty.
  photo?: string;
  bio?: string;
  linkedin?: string;
}

@Component({
  selector: 'app-about',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.css']
})
export class AboutComponent implements OnInit {

  // Fill in roles, photos, full names and short bios for each person.
  team: TeamMember[] = [
    { name: 'Peter Atito', role: '' },
    { name: 'Yagnesh', role: '' },
    { name: 'Shantel', role: '' }
  ];

  initials(name: string): string {
    return name
      .split(' ')
      .filter(part => part.length > 0)
      .slice(0, 2)
      .map(part => part.charAt(0).toUpperCase())
      .join('');
  }

  ngOnInit() {}
}
