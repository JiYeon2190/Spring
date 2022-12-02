package com.spring.care;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.care.impl.BoardDao;
import com.spring.care.impl.BoardDo;
import com.spring.care.impl.FacDao;
import com.spring.care.impl.FacDo;

@Controller
public class ProjectController {
	
	@RequestMapping(value = "/main.do")
	public String main() {
		return "careMainView";
	}
	
	@RequestMapping(value = "/form.do")
	public String form(FacDo fdo, FacDao fdao, Model model) {
		FacDo board = fdao.getOneBoard(fdo);
		model.addAttribute("board", board);
		return "careFormView";
	}
	
	@RequestMapping(value = "/insert.do")
	public String insert(BoardDo board) {
		BoardDao bdao = new BoardDao();
		bdao.insertBoard(board);
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/list.do")
	public String list(BoardDo bdo, BoardDao bdao, Model model) {
		ArrayList<BoardDo> bList = bdao.getBoardList();
		model.addAttribute("bList", bList);
		return "careListView";
	}
	
	@RequestMapping(value = "/info.do")
	public String info(FacDo fdo, FacDao fdao, Model model) {
		FacDo board = fdao.getOneBoard(fdo);
		model.addAttribute("board", board);
		return "careInfoView";
	}
	
	@RequestMapping(value = "/modify.do")
	public String modify(BoardDo bdo, BoardDao bdao) {
		bdao.updateBoard(bdo);
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/delete.do")
	public String delete(BoardDo bdo, BoardDao bdao) {
		bdao.deleteBoard(bdo);
		return "redirect:list.do";
	}
	
	@RequestMapping(value = "/searchFac.do")
	public String searchFac(@RequestParam(value = "searchCon") String searchCon,
								  @RequestParam(value = "searchKey") String searchKey,
								  FacDo fdo, FacDao fdao, Model model) {
		ArrayList<FacDo> fList = fdao.searchBoardList(searchCon, searchKey);
		model.addAttribute("fList", fList);
	
		return "careSearchView";
	}
	
	@RequestMapping(value = "/searchList.do")
	public String searchList(@RequestParam(value = "searchCon") String searchCon,
								  @RequestParam(value = "searchKey") String searchKey,
								  BoardDao bdao, Model model) {
		ArrayList<BoardDo> bList = bdao.searchBoardList(searchCon, searchKey);
		model.addAttribute("bList", bList);
	
		return "careListView";
	}
	
	@RequestMapping(value = "/sortList.do")
	public String sortList(@RequestParam(value = "sortCon") String sortCon,
						   BoardDao bdao, Model model) {
		ArrayList<BoardDo> bList = bdao.sortList(sortCon);
		model.addAttribute("bList", bList);
	
		return "careListView";
	}
	
	@RequestMapping(value = "/searcha.do")
	public String typeLista(FacDo fdo, FacDao fdao, Model model) {
		ArrayList<FacDo> fList = fdao.typeLista();
		model.addAttribute("fList", fList);
		return "careSearchView";
	}
	
	@RequestMapping(value = "/searchb.do")
	public String typeListb(FacDo fdo, FacDao fdao, Model model) {
		ArrayList<FacDo> fList = fdao.typeListb();
		model.addAttribute("fList", fList);
		return "careSearchView";
	}
	
	@RequestMapping(value = "/searchc.do")
	public String typeListc(FacDo fdo, FacDao fdao, Model model) {
		ArrayList<FacDo> fList = fdao.typeListc();
		model.addAttribute("fList", fList);
		return "careSearchView";
	}
	
	@RequestMapping(value = "/searchd.do")
	public String typeListd(FacDo fdo, FacDao fdao, Model model) {
		ArrayList<FacDo> fList = fdao.typeListd();
		model.addAttribute("fList", fList);
		return "careSearchView";
	}

}
