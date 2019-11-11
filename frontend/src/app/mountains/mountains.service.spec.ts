import { TestBed } from '@angular/core/testing';

import { MountainsService } from './mountains.service';

describe('MountainsService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: MountainsService = TestBed.get(MountainsService);
    expect(service).toBeTruthy();
  });
});
