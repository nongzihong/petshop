package com.nf147.pet.dao;

import com.nf147.pet.entity.ORder;
import java.util.List;

public interface ORderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ORder record);

    ORder selectByPrimaryKey(Integer id);

    List<ORder> selectAll();

    int updateByPrimaryKey(ORder record);
}