package service;


import model.SanPham;

import java.util.List;

public interface SanPhamService {
    List<SanPham> getAll();

    boolean addNew(SanPham sanPham);

    boolean edit(SanPham sanPham);

    void delete(SanPham sanPham);

    List<SanPham> search(String tenSanPham);
}
