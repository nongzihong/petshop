package com.nf147.pet.dao;

import com.nf147.pet.entity.Apiresponse;
import java.util.List;

public interface ApiresponseMapper {
    int deleteByPrimaryKey(Integer code);

    int insert(Apiresponse record);

    Apiresponse selectByPrimaryKey(Integer code);

    List<Apiresponse> selectAll();

    int updateByPrimaryKey(Apiresponse record);
}