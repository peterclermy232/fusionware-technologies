import { Component } from '@angular/core';

/**
 * Renders nothing. All page content lives directly in AppComponent's
 * template (see app.component.html) since the site is one scrolling
 * landing page — this component only exists so each section can have a
 * real, valid Angular route (e.g. /pricing-calculator) to give it a
 * clean, shareable URL. AppComponent listens for NavigationEnd and
 * scrolls to the matching section id.
 */
@Component({
  selector: 'app-route-anchor',
  standalone: true,
  template: ''
})
export class RouteAnchorComponent {}
