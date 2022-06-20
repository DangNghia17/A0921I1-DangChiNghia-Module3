package repository.Impl;

import model.SanPham;
import repository.BaseRepository;
import repository.SanPhamRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SanPhamRepositoryImpl implements SanPhamRepository {
    public final String SELECT_ALL_SANPHAM = " select * from `san_pham`; ";
    public final String INSERT = " INSERT INTO `san_pham` (`id`, `ten_san_pham`, `gia`, `so_luong`, `mau_sac`, `mo_ta`, `danh_muc`) VALUES (?, ?, ?, ?, ?, ?, ? ); ";
    public final String EDIT = " INSERT INTO `san_pham` (`id`, `ten_san_pham`, `gia`, `so_luong`, `mau_sac`, `mo_ta`, `danh_muc`) VALUES (?, ?, ?, ?, ?, ?, ? ); ";
    private final String SEARCH ="select * from san_pham where `ten_san_pham` like ? ;";
    private BaseRepository baseRepository = new BaseRepository();

    @Override
    public List<SanPham> getAll() {
        List<SanPham> sanPhamList = new ArrayList<>();
        try (Connection connection = baseRepository.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SANPHAM);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String tenSanPham = resultSet.getString("ten_san_pham");
                String gia = resultSet.getString("gia");
                int soLuong = resultSet.getInt("so_luong");
                String mauSac = resultSet.getString("mau_sac");
                String moTa = resultSet.getString("mo_ta");
                String danhMuc = resultSet.getString("danh_muc");
                SanPham sanPham = new SanPham(id, tenSanPham, gia, soLuong, mauSac, moTa, danhMuc);
                sanPhamList.add(sanPham);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return sanPhamList;
    }

    @Override
    public void addNew(SanPham sanPham) {
        try (Connection connection = baseRepository.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setInt(1, sanPham.getId());
            preparedStatement.setString(2, sanPham.getTenSanPham());
            preparedStatement.setString(3, sanPham.getGia());
            preparedStatement.setInt(4, sanPham.getSoLuong());
            preparedStatement.setString(5, sanPham.getMauSac());
            preparedStatement.setString(6, sanPham.getMoTa());
            preparedStatement.setString(7, sanPham.getDanhMuc());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void edit(SanPham sanPham) {
        try (Connection connection = baseRepository.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT);
            preparedStatement.setInt(1, sanPham.getId());
            preparedStatement.setString(2, sanPham.getTenSanPham());
            preparedStatement.setString(3, sanPham.getGia());
            preparedStatement.setInt(4, sanPham.getSoLuong());
            preparedStatement.setString(5, sanPham.getMauSac());
            preparedStatement.setString(6, sanPham.getMoTa());
            preparedStatement.setString(7, sanPham.getDanhMuc());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public void delete(SanPham sanPham) {

    }
    public List<SanPham> search(String tenSanPham) {
        List<SanPham> sanPhamList = new ArrayList<>();

        try (Connection connection = baseRepository.getConnection()){
            PreparedStatement ps = connection.prepareStatement(SEARCH);
            ps.setString(1,"%"+ tenSanPham+"%");
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
//                String tenSanPham = resultSet.getString("ten_san_pham");
                String gia = resultSet.getString("gia");
                int soLuong = resultSet.getInt("so_luong");
                String mauSac = resultSet.getString("mau_sac");
                String moTa = resultSet.getString("mo_ta");
                String danhMuc = resultSet.getString("danh_muc");
                SanPham sanPham = new SanPham(id, tenSanPham, gia, soLuong, mauSac, moTa, danhMuc);
                sanPhamList.add(sanPham);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return sanPhamList;
}}
