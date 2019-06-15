import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EmpleadosAddComponent } from './empleados-add.component';

describe('EmpleadosAddComponent', () => {
  let component: EmpleadosAddComponent;
  let fixture: ComponentFixture<EmpleadosAddComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EmpleadosAddComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EmpleadosAddComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
