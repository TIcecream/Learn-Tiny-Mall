package com.macro.mall.tiny.modules.pms.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.macro.mall.tiny.modules.pms.mapper.PmsProductMapper;
import com.macro.mall.tiny.modules.pms.model.PmsProduct;
import com.macro.mall.tiny.modules.pms.service.PmsProductService;

import org.springframework.stereotype.Service;

@Service
public class PmsProductServiceImpl extends ServiceImpl<PmsProductMapper, PmsProduct> implements PmsProductService {
    
    @Override
    public List<PmsProduct> getAllProducts() {
        return this.baseMapper.getAllProducts();
    }

    @Override
    public PmsProduct getWithId(long id) {
        return this.baseMapper.getWithId(id);
    }


}
