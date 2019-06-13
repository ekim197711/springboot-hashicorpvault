package com.codeinvestigator.vault_demo;

import com.codeinvestigator.vault_demo.mi6.BondCar;
import com.codeinvestigator.vault_demo.mi6.BondCarRepository;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@ActiveProfiles("development")
@Slf4j
public class VaultDemoApplicationTests {

    @Autowired
    BondCarRepository bondCarRepository;

    @Test
    public void repo() {
        bondCarRepository.deleteAll();
        bondCarRepository.save(new BondCar(null, "Toyota", false));
        List<BondCar> all = bondCarRepository.findAll();
        all.forEach(val -> log.info("bondcard: " + val));
    }

}
