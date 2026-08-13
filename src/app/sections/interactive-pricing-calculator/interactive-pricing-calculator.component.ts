import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { RouterLink } from '@angular/router';

interface PricingOption {
  id: string;
  name: string;
  basePrice: number;
  description: string;
  features: string[];
}

interface AddOn {
  id: string;
  name: string;
  price: number;
  description: string;
  category: string;
}

interface Currency {
  code: string;
  label: string;
  /** Units of this currency per 1 USD. Indicative only — see the disclaimer shown next to the total. */
  rate: number;
}


@Component({
  selector: 'app-interactive-pricing-calculator',
  imports: [CommonModule, FormsModule, RouterLink],
  templateUrl: './interactive-pricing-calculator.component.html',
  styleUrl: './interactive-pricing-calculator.component.css'
})
export class InteractivePricingCalculatorComponent implements OnInit {
  selectedOption: PricingOption | null = null;
  selectedTimeline = { id: 'standard', name: 'Standard', duration: '4-6 weeks', multiplier: 1, icon: '🕒' };
  selectedAddOns: string[] = [];

  // All prices below are stored in USD; these are approximate indicative rates
  // for display only — always shown next to a disclaimer in the template.
  currencies: Currency[] = [
    { code: 'USD', label: 'US Dollar (USD)', rate: 1 },
    { code: 'KES', label: 'Kenyan Shilling (KES)', rate: 129 },
    { code: 'UGX', label: 'Ugandan Shilling (UGX)', rate: 3700 },
    { code: 'TZS', label: 'Tanzanian Shilling (TZS)', rate: 2500 },
    { code: 'EUR', label: 'Euro (EUR)', rate: 0.92 },
    { code: 'GBP', label: 'British Pound (GBP)', rate: 0.79 }
  ];
  selectedCurrency: Currency = this.currencies[0];

  pricingOptions: PricingOption[] = [
    {
      id: 'website',
      name: 'Business Website',
      basePrice: 2500,
      description: 'Professional responsive website',
      features: ['Responsive Design', 'SEO Optimization', 'Contact Forms', '3 Months Support', 'Basic Analytics']
    },
    {
      id: 'ecommerce',
      name: 'E-commerce Platform',
      basePrice: 5000,
      description: 'Online store with payment integration',
      features: ['Product Management', 'Payment Integration', 'Inventory Tracking', 'Customer Accounts', 'Order Management']
    },
    {
      id: 'webapp',
      name: 'Web Application',
      basePrice: 8000,
      description: 'Custom business management system',
      features: ['Custom Features', 'User Management', 'Real-time Dashboard', 'API Integration', 'Advanced Security']
    },
    {
      id: 'sacco',
      name: 'SACCO System',
      basePrice: 15000,
      description: 'Complete SACCO management solution',
      features: ['Member Management', 'Loan Processing', 'M-Pesa Integration', 'Reporting Suite', 'Mobile App Included']
    },
    {
      id: 'mobile',
      name: 'Mobile App',
      basePrice: 7000,
      description: 'iOS & Android mobile application',
      features: ['Cross-platform', 'Push Notifications', 'Offline Support', 'App Store Deployment', 'Analytics']
    },
    {
      id: 'custom',
      name: 'Custom Solution',
      basePrice: 10000,
      description: 'Tailored to your specific needs',
      features: ['Requirement Analysis', 'Custom Development', 'Integration Support', 'Training Included', 'Maintenance Plan']
    }
  ];

  timelines = [
    { id: 'standard', name: 'Standard', duration: '4-6 weeks', multiplier: 1, icon: '' },
    { id: 'fast', name: 'Fast Track', duration: '2-3 weeks', multiplier: 1.3, icon: '' },
    { id: 'rush', name: 'Rush Job', duration: '1-2 weeks', multiplier: 1.6, icon: '' }
  ];

  addOns: AddOn[] = [
    { id: 'seo', name: 'Advanced SEO Package', price: 800, description: 'Complete SEO optimization & Google ranking', category: 'marketing' },
    { id: 'social', name: 'Social Media Integration', price: 500, description: 'Instagram, Facebook, Twitter integration', category: 'integration' },
    { id: 'analytics', name: 'Advanced Analytics Dashboard', price: 1200, description: 'Business intelligence & reporting', category: 'analytics' },
    { id: 'security', name: 'Enhanced Security Suite', price: 1000, description: 'SSL, firewall, backup & monitoring', category: 'security' },
    { id: 'training', name: 'Staff Training Package', price: 600, description: '8 hours of comprehensive system training', category: 'training' },
    { id: 'maintenance', name: '1-Year Premium Support', price: 1500, description: '24/7 support, updates & maintenance', category: 'support' },
    { id: 'whatsapp', name: 'WhatsApp Business Integration', price: 400, description: 'Automated customer communication', category: 'integration' },
    { id: 'mpesa', name: 'Mobile Money Integration', price: 800, description: 'M-Pesa, Airtel Money integration', category: 'payment' }
  ];

  ngOnInit() {
    // Pre-select the most popular option
    this.selectedOption = this.pricingOptions[1]; // E-commerce platform
  }

  selectOption(option: PricingOption) {
    this.selectedOption = option;
    this.selectedAddOns = []; // Reset add-ons when changing project type
  }

  toggleAddon(addon: AddOn) {
    const index = this.selectedAddOns.indexOf(addon.id);
    if (index > -1) {
      this.selectedAddOns.splice(index, 1);
    } else {
      this.selectedAddOns.push(addon.id);
    }
  }

  getAddonById(id: string): AddOn | undefined {
    return this.addOns.find(addon => addon.id === id);
  }

  /** Converts a USD amount into the selected display currency and formats it. */
  formatPrice(amountUsd: number): string {
    const converted = amountUsd * this.selectedCurrency.rate;
    try {
      return new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: this.selectedCurrency.code,
        maximumFractionDigits: 0
      }).format(converted);
    } catch {
      return `${this.selectedCurrency.code} ${Math.round(converted).toLocaleString('en-US')}`;
    }
  }

  getTotalPrice(): number {
    if (!this.selectedOption) return 0;

    let total = this.selectedOption.basePrice * this.selectedTimeline.multiplier;

    this.selectedAddOns.forEach(addonId => {
      const addon = this.getAddonById(addonId);
      if (addon) {
        total += addon.price;
      }
    });

    return total;
  }

  /** Sends the configured estimate straight to WhatsApp so a lead can convert in one tap. */
  requestQuote() {
    if (!this.selectedOption) return;

    const addonNames = this.selectedAddOns
      .map(id => this.getAddonById(id)?.name)
      .filter((name): name is string => !!name);

    const total = this.getTotalPrice();
    const localEquivalent = this.selectedCurrency.code !== 'USD'
      ? ` (approx. ${this.formatPrice(total)})`
      : '';

    const lines = [
      `Hi FusionWare! I'd like a quote for the *${this.selectedOption.name}* package.`,
      `Timeline: ${this.selectedTimeline.name} (${this.selectedTimeline.duration})`,
      addonNames.length ? `Add-ons: ${addonNames.join(', ')}` : null,
      `Estimated total: $${total.toLocaleString('en-US')}${localEquivalent}`
    ].filter(Boolean);

    const message = encodeURIComponent(lines.join('\n'));
    window.open(`https://wa.me/254728985079?text=${message}`, '_blank', 'noopener');
  }
}
