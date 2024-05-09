package com.example.demo.controller;

import com.example.demo.entity.Ban;
import com.example.demo.respository.banRespository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class banController {
    banRespository respository = new banRespository();

    @RequestMapping(value = "/hien-thi")
    public String show(HttpServletRequest request) {
        List<Ban> bans;
        String key = request.getParameter("key");
        int soTrang = 5;
        if (key == null || key.isEmpty()) {
            bans = respository.getAll();
        }else{
            bans = respository.search(key);
        }
        int tongTrang = (int) Math.ceil((double) bans.size() / soTrang);
        int trangMacDinh = 1;
        String trangHienTai = request.getParameter("trang");
        if (trangHienTai != null && !trangHienTai.isEmpty()) {
            trangMacDinh = Integer.parseInt(trangHienTai);
        }
        int batDau = (trangMacDinh - 1) * soTrang;
        int ketThuc = Math.min(batDau + soTrang, bans.size());
        List<Ban> subList = bans.subList(batDau, ketThuc);
        request.setAttribute("bans", subList);
        request.setAttribute("tongTrang", tongTrang);
        request.setAttribute("trangMacDinh", trangMacDinh);
        return "listBan";
    }

    @RequestMapping(value = "/formAdd")
    public String formAdd() {
        return "formAdd";
    }
    @RequestMapping(value = "/formUpdate")
    public String formUpdate(HttpServletRequest req,@RequestParam("id") String id) {
        Ban ban = respository.getOne(Integer.valueOf(id));
        req.setAttribute("bans", ban);
        return "formUpdate";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@ModelAttribute Ban ban) {
        respository.add(ban);
        return "redirect:/hien-thi";
    }
    @RequestMapping(value = "/sua", method = RequestMethod.POST)
    public String sua(HttpServletRequest req) {
        Ban ban = new Ban();
        ban.setId(Integer.valueOf(req.getParameter("id")));
        ban.setMa(req.getParameter("ma"));
        ban.setTen(req.getParameter("ten"));
        ban.setSoThich(req.getParameter("soThich"));
        ban.setGioiTinh(Integer.valueOf(req.getParameter("gioiTinh")));
        respository.update(ban);
        return "redirect:/hien-thi";
    }

    @GetMapping("/xoa")
    public String xoa(@RequestParam("id") String id) {
        Ban ban = respository.getOne(Integer.valueOf(id));
        respository.delete(ban);
        return "redirect:/hien-thi";
    }
}
