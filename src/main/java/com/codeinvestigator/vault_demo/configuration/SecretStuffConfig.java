package com.codeinvestigator.vault_demo.configuration;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties("topsecret")
@Data
public class SecretStuffConfig {
    private String user;
    private String password;
    private String car;
}
