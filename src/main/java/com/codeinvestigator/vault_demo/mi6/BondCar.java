package com.codeinvestigator.vault_demo.mi6;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BondCar {
    @Id
    private String _id;
    private String brand = "Aston Martin";
    private Boolean ejectorSeat = true;

}
