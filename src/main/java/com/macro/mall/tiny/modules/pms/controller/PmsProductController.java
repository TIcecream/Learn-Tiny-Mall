package com.macro.mall.tiny.modules.pms.controller;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.macro.mall.tiny.common.api.CommonResult;
import com.macro.mall.tiny.modules.pms.model.PmsProduct;
import com.macro.mall.tiny.modules.pms.service.PmsProductService;
import com.macro.mall.tiny.modules.ums.model.UmsMenu;
import com.macro.mall.tiny.modules.ums.service.UmsMenuService;

import org.apache.velocity.util.introspection.UberspectImpl.VelMethodImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/product")
public class PmsProductController {

    @Autowired
    private PmsProductService pmsProductService;

    @Autowired
    private UmsMenuService umsMenuService;

    @ResponseBody
    @RequestMapping(value="/list", method = RequestMethod.GET)
    public void list() {
        // List<PmsProduct> data = pmsProductService.getAllProducts();
        PmsProduct product = pmsProductService.getById(1L);
        System.out.println("end");
        // UmsMenu umsMenu = umsMenuService.getById(1);
        // PmsProduct p3 = pmsProductService.getWithId(1);
        // QueryWrapper wrapper = new QueryWrapper<>();
        // wrapper.lambda().eq(PmsProduct::getId,1);
        // PmsProduct p2 = pmsProductService.getOne(wrapper);

        // PmsProduct p1 = new PmsProduct();
        // // p1.setId(2L);
        // p1.setBrandId(3L);
        // p1.setProductCategoryId(1L);
        // p1.setName("test2");
        // p1.setProductSn("1111");

        // pmsProductService.save(p1);

        // return CommonResult.success(data);
    }
    
}
