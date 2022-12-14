package com.example.ps6;

import android.app.Application;

import androidx.annotation.NonNull;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;

import java.util.List;

public class BookViewModel extends AndroidViewModel {
    private final BookRepository bookRepository;
    private final LiveData<List<Book>> books;

    public BookViewModel(@NonNull Application app) {
        super(app);
        bookRepository = new BookRepository(app);
        this.books = bookRepository.findAllBooks();
    }

    public LiveData<List<Book>> findAll() {
        return books;
    }


    void  insert(Book book){
        bookRepository.insert(book);
    }

    void update(Book book){
        bookRepository.update(book);
    }

    void delete(Book book){
        bookRepository.delete(book);
    }
}
