package kr.co.kface.intern.config;

import net.sf.log4jdbc.Log4jdbcProxyDataSource;
import net.sf.log4jdbc.tools.Log4JdbcCustomFormatter;
import net.sf.log4jdbc.tools.LoggingType;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.PlatformTransactionManager;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by jaeng on 2017. 7. 3..
 */
@Configuration
public class DatabaseConfig {

    @Resource(name="appProperties")
    private Properties properties;

    @Bean
    public DataSource dataSourceSpied() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();

        String driverClassName = (String)properties.get("db.driverClassName");
        String url = (String)properties.get("db.url");
        String userName = (String)properties.get("db.username");
        String password = (String)properties.get("db.password");

        dataSource.setDriverClassName(driverClassName);
        dataSource.setUrl(url);
        dataSource.setUsername(userName);
        dataSource.setPassword(password);
        return dataSource;
    }

    @Bean
    public Log4jdbcProxyDataSource dataSource(){
        Log4jdbcProxyDataSource dataSource = new Log4jdbcProxyDataSource(dataSourceSpied());
        Log4JdbcCustomFormatter formatter = new Log4JdbcCustomFormatter();
        formatter.setLoggingType(LoggingType.MULTI_LINE);
        formatter.setSqlPrefix("SQL:::\n");
        dataSource.setLogFormatter(formatter);
        return dataSource;
    }

    @Bean
    public PlatformTransactionManager transactionManager() {
        return new DataSourceTransactionManager(dataSource());
    }

    @Bean
    public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource dataSource,
                                                       ApplicationContext applicationContext) throws IOException {

        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        factoryBean.setDataSource(dataSource);
        factoryBean.setConfigLocation(applicationContext.getResource("classpath:mybatis/configuration.xml"));
        factoryBean.setMapperLocations(applicationContext.getResources("classpath:mybatis/mappers/**/*.xml"));


        return factoryBean;
    }

}
