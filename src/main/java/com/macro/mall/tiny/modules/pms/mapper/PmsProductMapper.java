package com.macro.mall.tiny.modules.pms.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.macro.mall.tiny.modules.pms.model.PmsProduct;

import org.apache.ibatis.annotations.Select;

public interface PmsProductMapper extends BaseMapper<PmsProduct> {
    @Select("select * from pms_product")
    public List<PmsProduct> getAllProducts();

    @Select("select * from pms_product where id = #{id}")
    public PmsProduct getWithId(long id);
}
