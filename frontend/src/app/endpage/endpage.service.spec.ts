import { TestBed } from '@angular/core/testing';

import { EndpageService } from './endpage.service';

describe('EndpageService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: EndpageService = TestBed.get(EndpageService);
    expect(service).toBeTruthy();
  });
});
