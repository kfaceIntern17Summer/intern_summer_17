package kr.co.kface.intern.config;

import org.springframework.beans.factory.config.PropertiesFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;

/**
 * Created by jaeng on 2017. 5. 18..
 */
@Configuration
public class PropertiesConfig {
    @Bean(name="appProperties")
    public PropertiesFactoryBean appProperties() {
        PropertiesFactoryBean bean = new PropertiesFactoryBean();
        bean.setLocation(new ClassPathResource("app-properties.xml"));
        return bean;
    }
}
