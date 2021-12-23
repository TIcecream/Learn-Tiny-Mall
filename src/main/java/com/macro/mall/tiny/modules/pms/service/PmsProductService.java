package com.macro.mall.tiny.modules.pms.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.macro.mall.tiny.modules.pms.dto.ProductInsertDTO;
import com.macro.mall.tiny.modules.pms.model.PmsProduct;

public interface PmsProductService extends IService<PmsProduct>{
    public List<PmsProduct> getAllProducts();

    public PmsProduct getWithId(long id);

    public boolean create(ProductInsertDTO productInsertDTO);
}
