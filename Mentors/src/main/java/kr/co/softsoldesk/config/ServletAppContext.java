package kr.co.softsoldesk.config;

import javax.annotation.Resource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperFactoryBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.interceptor.CheckLoginInterceptor;
import kr.co.softsoldesk.interceptor.MainHeaderInterceptor;
import kr.co.softsoldesk.mapper.BookMapper;
import kr.co.softsoldesk.mapper.CartMapper;
import kr.co.softsoldesk.mapper.ClassMapper;
import kr.co.softsoldesk.mapper.EventMapper;
import kr.co.softsoldesk.mapper.QnAaMapper;
import kr.co.softsoldesk.mapper.QnAqMapper;
import kr.co.softsoldesk.mapper.NotificationMapper;
import kr.co.softsoldesk.mapper.TeacherMapper;
import kr.co.softsoldesk.mapper.WTMapper;
import kr.co.softsoldesk.mapper.WTT_Mapper;

@Configuration
@EnableWebMvc
@ComponentScan("kr.co.softsoldesk.controller")
@ComponentScan("kr.co.softsoldesk.service")
@ComponentScan("kr.co.softsoldesk.mapper")
@ComponentScan("kr.co.softsoldesk.dao")
@PropertySource("/WEB-INF/properties/db.properties")
public class ServletAppContext implements WebMvcConfigurer {

	@Value("${db.classname}")
	private String db_classname;

	@Value("${db.url}")
	private String db_url;

	@Value("${db.username}")
	private String db_username;

	@Value("${db.password}")
	private String db_password;

	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;

	@Resource(name = "tempCategoryBean")
	private WTBean tempCategoryBean;

	// Controller 메서드가 반환하는 jsp 이름 앞뒤에 경로, 확장자 설정
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}

	// 정적 파일 경로 매핑
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("resources/**").addResourceLocations("/resources/");
	}

	// 데이터베이스 접속 정보를 관리하는 Bean
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(db_classname);
		source.setUrl(db_url);
		source.setUsername(db_username);
		source.setPassword(db_password);

		return source;
	}

	// 쿼리문과 접속 정보를 관리하는 객체
	@Bean
	public SqlSessionFactory factory(BasicDataSource source) throws Exception {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(source);
		SqlSessionFactory factory = factoryBean.getObject();
		return factory;
	}

	// 쿼리문 실행을 위한 객체(쿼리문을 관리하는 Mapper를 정의)

	@Bean
	public MapperFactoryBean<TeacherMapper> teacherMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<TeacherMapper> factoryBean = new MapperFactoryBean<TeacherMapper>(TeacherMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<WTMapper> wtMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<WTMapper> factoryBean = new MapperFactoryBean<WTMapper>(WTMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<CartMapper> cartMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<CartMapper> factoryBean = new MapperFactoryBean<CartMapper>(CartMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<BookMapper> bookMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<BookMapper> factoryBean = new MapperFactoryBean<BookMapper>(BookMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<WTT_Mapper> wtt_Mapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<WTT_Mapper> factoryBean = new MapperFactoryBean<WTT_Mapper>(WTT_Mapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<ClassMapper> classMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<ClassMapper> factoryBean = new MapperFactoryBean<ClassMapper>(ClassMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<NotificationMapper> NotificationMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<NotificationMapper> factoryBean = new MapperFactoryBean<NotificationMapper>(
				NotificationMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;

	}

	@Bean
	public MapperFactoryBean<QnAaMapper> QnAaMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<QnAaMapper> factoryBean = new MapperFactoryBean<QnAaMapper>(QnAaMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	@Bean
	public MapperFactoryBean<QnAqMapper> QnAqMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<QnAqMapper> factoryBean = new MapperFactoryBean<QnAqMapper>(QnAqMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}
	
	@Bean
	public MapperFactoryBean<EventMapper> EventMapper(SqlSessionFactory factory) throws Exception {
		MapperFactoryBean<EventMapper> factoryBean = new MapperFactoryBean<EventMapper>(EventMapper.class);
		factoryBean.setSqlSessionFactory(factory);
		return factoryBean;
	}

	// interceptor 처리
	public void addInterceptors(InterceptorRegistry registry) {
		WebMvcConfigurer.super.addInterceptors(registry);

		MainHeaderInterceptor mainHeaderInterceptor = new MainHeaderInterceptor(loginTeacherBean);
		InterceptorRegistration reg1 = registry.addInterceptor(mainHeaderInterceptor);
		reg1.addPathPatterns("/**");
		
		CheckLoginInterceptor checkLoginInterceptor = new CheckLoginInterceptor(loginTeacherBean);
		InterceptorRegistration reg2 = registry.addInterceptor(checkLoginInterceptor);
		reg2.addPathPatterns("/user/Mypage", "/user/Mypage_change", "/user/Password_change_confirm", "/user/delete_account", "/user/logout");
		
		//특정 사이트들만 비로그인 진입 불가를 걸고 싶은 경우
		//비로그인 시 이용불가 사이트 : "/user/Mypage", "/user/Mypage_change" ("/user/Mypage" 로 임의로 진입 시 차단이란 의미)
		
		//포괄로 막아놓고 몇몇 웹만 열고 싶은 경우
		//비로그인 시 이용불가 사이트 포괄 : "/user/*"  ("/user/ 폴더 안에 들어있는 모든 파일 비활성화의 의미)
		//비로그인 시 이용불가 사이트 포괄 중 예외 사이트 : "/user/Login", "/user/Not_login" ("/user 폴더 안에 있는 파일 중 "/Login", "Not_login"은 예외적으로 사용가능의 의미)
	}

}
