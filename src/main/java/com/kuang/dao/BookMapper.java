package com.kuang.dao;

import com.kuang.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.awt.print.Book;
import java.util.List;

/**
 * @author Su
 * @create 2022-04-19 23:08
 */
public interface BookMapper {

    //增加一本书
    int addBook(Books book);

    //删除一本书
    int deleteBook(@Param("bookId") int id);

    //更新一本书
    int updateBook(Books books);

    //查询一本书
    Books queryBookById(@Param("bookId") int id);

    //查询全部的书
    List<Books> queryAllBook();

    Books queryBookByName(@Param("bookName") String bookName);

}
