package com.recruit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.recruit.service.RegisterService;
import com.recruit.service.UserService;
import com.recruit.vo.Muser;
import com.recruit.vo.Team;
import com.recruit.vo.User;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	@RequestMapping("/login")
    public String login(User user,Model model) throws Exception {
		
        user = userService.checkLogin(user.getName(), user.getPassword());
        
        if(user!=null){
            model.addAttribute(user);
            return "welcome";           
        }
        return "index";

	}
	
	@RequestMapping("/list")
	public String list(Model model) {
		
		model.addAttribute("list",userService.list());
		return "list";
		
	}

	@RequestMapping("/delete")
	public String delete(Model model,Integer id) {
		userService.deleteMuserByid(id);
		model.addAttribute("success", "成功");
		return "success";
		
	}
	
	@Autowired
	RegisterService registerService;
	@RequestMapping("/register")
	public String add(Muser muser,Model model) {
		registerService.register(muser);
		
		model.addAttribute("success","注册成功！！！");
		return "result";
		
	}
	
	@RequestMapping(value = "/download")
	public ResponseEntity<byte[]> download(HttpServletRequest request, @RequestParam("filename") String filename,
			Model model) throws Exception {
		// �����ļ�·��
		String path = request.getServletContext().getRealPath("/fileupload");
		File file = new File(path + File.separator + filename);
		HttpHeaders headers = new HttpHeaders();
		// ����
		String downloadFielName = new String(filename.getBytes("UTF-8"), "iso-8859-1");
		// ��attachment�����ط�ʽ����ͼƬ
		headers.setContentDispositionFormData("attachment", downloadFielName);
		// �����������ݣ�������ļ����أ���
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
	}
	
	@RequestMapping("/upload")
	public String fileUpload(@RequestParam("file")CommonsMultipartFile file,HttpServletRequest req) throws IOException {
		//��ȡ�ļ���
//		file.getOriginalFilename()
		//��ȡ�ļ�·��
		String path = req.getRealPath("/fileupload");
		System.out.println(path);
		InputStream is = file.getInputStream();
		OutputStream os  = new FileOutputStream(new File(path,file.getOriginalFilename()));
		int len = 0;
		byte[] buffer = new byte[500];
		while((len=is.read(buffer))!=-1) 
			
			os.write(buffer, 0, len);
		os.close();
		is.close();
	
		
		return "result";
		
	}
	
	@RequestMapping("/team")
	public String addTeam(Team team,Model model) {
		registerService.addTeam(team);
		
		model.addAttribute("success","成功");
		return "result";
		
	}
	@RequestMapping("/delete1")
	public String delete1(Model model,Integer id) {
		userService.deleteTeamByid(id);
		model.addAttribute("success", "成功");
		return "success";
		
	}
	@RequestMapping("/list1")
	public String list1(Model model) {
		
		model.addAttribute("list1",userService.list1());
		return "list1";
		
	}

	
}
