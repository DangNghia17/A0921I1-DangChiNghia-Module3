package service.Impl;

import model.SanPham;
import repository.Impl.SanPhamRepositoryImpl;
import repository.SanPhamRepository;
import service.SanPhamService;

import java.util.List;

public class SanPhamServiceImpl implements SanPhamService {
    private SanPhamRepository sanPhamRepository = new SanPhamRepositoryImpl();

    @Override
    public List<SanPham> getAll() {
        return sanPhamRepository.getAll();
    }

    @Override
    public boolean addNew(SanPham sanPham) {
        sanPhamRepository.addNew(sanPham);
        return false;
    }

    @Override
    public boolean edit(SanPham sanPham) {
        sanPhamRepository.edit(sanPham);;
        return false;
    }

    @Override
    public void delete(SanPham sanPham) {
        sanPhamRepository.delete(sanPham);;
    }
    public List<SanPham> search(String tenSanPham){
        return sanPhamRepository.search(tenSanPham);
    }

}
