package pl.mbierut.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class ArchivesprojectsbApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(ArchivesprojectsbApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(ArchivesprojectsbApplication.class, args);
    }



}
