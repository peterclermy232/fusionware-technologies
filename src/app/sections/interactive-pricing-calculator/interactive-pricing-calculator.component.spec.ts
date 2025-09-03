import { ComponentFixture, TestBed } from '@angular/core/testing';

import { InteractivePricingCalculatorComponent } from './interactive-pricing-calculator.component';

describe('InteractivePricingCalculatorComponent', () => {
  let component: InteractivePricingCalculatorComponent;
  let fixture: ComponentFixture<InteractivePricingCalculatorComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [InteractivePricingCalculatorComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(InteractivePricingCalculatorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
