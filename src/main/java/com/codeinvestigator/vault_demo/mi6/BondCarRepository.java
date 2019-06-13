package com.codeinvestigator.vault_demo.mi6;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface BondCarRepository  extends MongoRepository<BondCar, String> {
}
