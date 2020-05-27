package service;

import domain.Tab;

import java.util.List;

public interface TabService {

    List<Tab> findAll() throws Exception;
}
