package net.aisw;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("net.aisw.mapper")
@SpringBootApplication
public class FCfansite {

	public static void main(String[] args) {
		SpringApplication.run(FCfansite.class, args);
	}

}
