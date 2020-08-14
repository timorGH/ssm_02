package com.chinasoft.dao;

import com.chinasoft.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IUserDao {

    /**
     * 查询所有用户
     * @return List<User>
     */
    @Select("select * from tab_user")
    List<User> findAll();

    /**
     * 新增用户信息
     */
    @Insert("insert into tab_user values(null,#{username},#{birthday},#{sex},#{address})")
    void insertUser(User user);

    @Select("select * from user where username = ?")
    Integer loginUser();

}
