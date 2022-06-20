package repository;

import model.SanPham;

import java.util.List;

public interface SanPhamRepository {
    List<SanPham> getAll();

    void addNew(SanPham sanPham);

    void edit(SanPham sanPham);

    void delete(SanPham sanPham);
    List<SanPham> search(String tenSanPham);
}
