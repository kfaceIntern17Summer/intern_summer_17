package kr.co.kface.intern.app.index;


import kr.co.kface.intern.app.index.service.IndexService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;


@Controller
public class MainController {
    private Logger logger = LogManager.getLogger(this.getClass());

    @Resource(name = "indexService")
    private IndexService indexService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() throws Exception {

        ModelAndView mav = new ModelAndView("/main");

        return mav;
    }

    @RequestMapping(value = "/cell-management", method = RequestMethod.GET)
    public ModelAndView cell_management() {
        ModelAndView mav = new ModelAndView("/cell_management");

        mav.addObject("memberData", indexService.selectMemberList());
        mav.addObject("totalcellData", indexService.selectCellList());

        return mav;
    }

    //보여주기만
    @RequestMapping(value = "/celllist", method = RequestMethod.GET)
    public ModelAndView showCells() throws Exception {

        ModelAndView mav = new ModelAndView("/list");

        mav.addObject("totalcellData", indexService.selectCellList());

        return mav;
    }

    @RequestMapping(value = "/celllist/{cellID}", method = RequestMethod.GET)
    public ModelAndView showCellMember(@PathVariable("cellID") int cellID) throws Exception {

        ModelAndView mav = new ModelAndView("/cell_member");

        mav.addObject("memberData", indexService.selectCellMember(cellID));
        mav.addObject("cellData", indexService.selectCellList(cellID));
        mav.addObject("cellID", cellID);
        return mav;
    }

    @RequestMapping(value = "/cell/{cellID}", method = RequestMethod.GET)
    public ModelAndView showCellInfo(@PathVariable("cellID") int cellID) throws Exception {
        ModelAndView mav = new ModelAndView("/cell_info");

        mav.addObject("memberData", indexService.selectCellMember(cellID));
        mav.addObject("cellData", indexService.selectCellList(cellID));
        mav.addObject("cellID", cellID);
        return mav;
    }

    @RequestMapping(value = "/member-management", method = {RequestMethod.GET, RequestMethod.POST})
    public ModelAndView member_management(@RequestParam HashMap<String, Object> params) {
        ModelAndView mav = new ModelAndView("/member_management");

        if (params.isEmpty())
            mav.addObject("memberData", indexService.selectMemberList());
        else {
            mav.addObject("memberData", indexService.selectMemberList(params));
        }

        return mav;
    }

    @RequestMapping(value = "/newUser", method = RequestMethod.GET)
    public ModelAndView addUser() {
        ModelAndView mav = new ModelAndView("/newUser");

        mav.addObject("totalcellData", indexService.selectCellList());

        return mav;
    }


    @RequestMapping(value = "/leader/{cellID}", method = RequestMethod.GET)
    public ModelAndView leader(@PathVariable("cellID") int cellID) throws Exception {
        ModelAndView mav = new ModelAndView("/leader");

        mav.addObject("memberData", indexService.selectCellMember(cellID));
        return mav;
    }

    @RequestMapping(value = "/setLeader", method = RequestMethod.POST)
    public String setLeader(@RequestParam HashMap<String, Object> params) throws Exception {

        indexService.setLeader(params);

        return "redirect:/cell-management";
    }

    @RequestMapping(value = "/member/{memberID}", method = RequestMethod.GET)
    public ModelAndView showProfile(@PathVariable("memberID") int memberID) throws Exception {

        ModelAndView mav = new ModelAndView("/member");
        mav.addObject("memberData", indexService.selectMember(memberID));
        return mav;
    }


    @RequestMapping(value = "/addMember/{cellID}", method = RequestMethod.GET)
    public ModelAndView addMember(@PathVariable("cellID") int cellID) {
        ModelAndView mav = new ModelAndView("/addMember");

        mav.addObject("memberData", indexService.selectCellMemberEx(cellID));
        mav.addObject("cellID", cellID);

        return mav;
    }

    @RequestMapping(value = "/cellMember", method = RequestMethod.POST)
    public String updateCellMember(@RequestParam("checkRow") List<Integer> test, @RequestParam("cell_idx") int cell_idx) {
        HashMap<String, Integer> params = new HashMap();

        for (int i = 0; i < test.size(); i++) {
            params.put("cellID", cell_idx);
            params.put("memberID", test.get(i).intValue());
            indexService.addCellMember(params);
        }


        String url="redirect:/cell/"+cell_idx;

        return url;
    }


    @RequestMapping(value = "/newCell", method = RequestMethod.GET)
    public ModelAndView newcell() throws Exception {
        ModelAndView mav = new ModelAndView("/newcell");
        mav.addObject("totalcellData", indexService.selectCellList());

        return mav;
    }

    @RequestMapping(value = "/newCell", method = RequestMethod.POST)
    public String newCell(@RequestParam HashMap<String, Object> params) throws Exception {
        indexService.insertCell(params);


        return "redirect:/cell-management";

    }


    @RequestMapping(value = "insertMember", method = RequestMethod.POST)
    public String insertMember(@RequestParam HashMap<String, Object> params) throws Exception {

        indexService.insertMember(params);

        return "redirect:/member-management";
    }


    @RequestMapping(value = "/updateMember", method = RequestMethod.POST)
    public String updateMember(@RequestParam HashMap<String, Object> params) throws Exception {

        indexService.updateMember(params);

        return "redirect:/member-management";
    }


    @RequestMapping(value = "/deleteMember/{memberID}")
    public String deleteMember(@PathVariable("memberID") int memberID) throws Exception {

        indexService.deleteMember(memberID);

        return "redirect:/member-management";
    }

    @RequestMapping(value = "/deleteCell/{cellID}")
    public String deleteCell(@PathVariable("cellID") int cellID) throws Exception {
        indexService.deleteCell(cellID);

        return "redirect:/cell-management";
    }

    @RequestMapping(value = "/report/{cellID}", method = RequestMethod.GET)
    public ModelAndView dailyReport(@PathVariable("cellID") int cellID) throws Exception {

        ModelAndView mav = new ModelAndView("/report");

        mav.addObject("memberData", indexService.selectCellMember(cellID));
        mav.addObject("cellData", indexService.selectCellList(cellID));
        mav.addObject("totalcellData", indexService.selectCellList());
        mav.addObject("reportData", indexService.selectReport(cellID));

        return mav;
    }

    @RequestMapping(value = "/report1", method = RequestMethod.GET)
    public ModelAndView dailyReport() throws Exception {

        ModelAndView mav = new ModelAndView("/report1");

        return mav;
    }

}

