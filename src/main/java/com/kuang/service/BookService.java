package com.kuang.service;

import com.kuang.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Su
 * @create 2022-04-19 23:42
 */
public interface BookService {
    //增加一本书
    int addBook(Books book);

    //删除一本书
    int deleteBook(int id);

    //更新一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(int id);

    //查询全部的书
    List<Books> queryAllBook();

    Books queryBookByName(@Param("bookName") String bookName);

}
