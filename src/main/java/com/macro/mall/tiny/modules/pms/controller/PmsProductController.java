package com.macro.mall.tiny.modules.pms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.macro.mall.tiny.common.api.CommonResult;
import com.macro.mall.tiny.modules.pms.dto.ProductInsertDTO;
import com.macro.mall.tiny.modules.pms.dto.TestDTO;
import com.macro.mall.tiny.modules.pms.model.PmsProduct;
import com.macro.mall.tiny.modules.pms.service.PmsProductService;
import com.macro.mall.tiny.modules.ums.model.UmsMenu;
import com.macro.mall.tiny.modules.ums.service.UmsMenuService;

import org.apache.velocity.util.introspection.UberspectImpl.VelMethodImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import io.swagger.v3.oas.annotations.parameters.RequestBody;

@Controller
@RequestMapping("/product")
public class PmsProductController {

    @Autowired
    private PmsProductService pmsProductService;

    @ResponseBody
    @RequestMapping(value="/list", method = RequestMethod.GET)
    public CommonResult list() {
        List<PmsProduct> products = pmsProductService.list();
        if (products != null) {
            return CommonResult.success(products);
        } else {
            return CommonResult.failed();
        }
    
    }

    @ResponseBody
    @RequestMapping(value="/create", method= RequestMethod.POST)
    public CommonResult create(@RequestBody ProductInsertDTO productInsertDTO) {
        boolean result = pmsProductService.create(productInsertDTO);
        if (result) {
            return CommonResult.success(true);
        } else {
            return CommonResult.failed();
        }
    }

    @ResponseBody
    @RequestMapping(value="/delete/{id}", method = RequestMethod.DELETE)
    public CommonResult delete(@PathVariable("id") Long id) {
        boolean result = pmsProductService.removeById(id);
        if (result) {
            return CommonResult.success("success");
        } else {
            return CommonResult.failed("fail");
        }
    }

    @ResponseBody
    @RequestMapping(value="/details/{id}", method = RequestMethod.GET)
    public CommonResult get1(@PathVariable("id") Long id) {
        PmsProduct pmsProduct = pmsProductService.getById(id);
        if (pmsProduct != null) {
            return CommonResult.success(pmsProduct);
        } else {
            return CommonResult.failed("fail");
        }
    }

    @ResponseBody
    @RequestMapping(value="/test", method = RequestMethod.POST)
    public CommonResult test(@RequestBody TestDTO testDTO, @RequestBody String json, HttpServletRequest request) {
        TestDTO testDTO1 = testDTO;
        System.out.println("testDTO");
        return CommonResult.success("true");
    }
    
}
