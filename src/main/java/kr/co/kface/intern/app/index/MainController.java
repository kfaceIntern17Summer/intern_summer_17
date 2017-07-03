package kr.co.kface.intern.app.index;

import kr.co.kface.intern.app.index.service.IndexService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by jaeng on 2017. 5. 18..
 */
@Controller
public class MainController {
    private Logger logger = LogManager.getLogger(this.getClass());

    @Resource(name="indexService")
    private IndexService indexService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView();

        // log4j에 대해서도 공부해보세요
        logger.info("로그는 이걸로 찍으세요");

        // Service에서 유저 정보를 받아옵니다
        mav.addObject("data", indexService.selectUserList());
        mav.setViewName("/index");
        return mav;
    }
}

