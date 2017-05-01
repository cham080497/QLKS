using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QL_KS.GUI
{
    public partial class frmNhanvien : Form
    {
        private EC_TaiKhoan EC_TK = new EC_TaiKhoan();
        private DAL_TaiKhoan DAL_TK = new DAL_TaiKhoan();
        private EC_NhanVien EC_NV = new EC_NhanVien();
        private DAL_NhanVien DAL_NV = new DAL_NhanVien();
        private bool _kochon;
        private bool _them = false;
        private bool _suangs = false;
        public frmNhanvien()
        {
            InitializeComponent();
        }
        private void load_lst()
        {
            lstDanhSachNV.Items.Add(frmMain._taikhoan);
            DataTable tbl = DAL_TK.LayDanhSachTK("MaNV != 'ADMIN' and MaNV != '" + frmMain._taikhoan + "'");
            for (int i = 0; i < tbl.Rows.Count; i++)
            {
                lstDanhSachNV.Items.Add(tbl.Rows[i]["MaNV"].ToString());
            }
        }
        private void frmNhanvien_Load(object sender, EventArgs e)
        {
            tltChuThich.SetToolTip(btnLuu, "Lưu thông tin người dùng");
            tltChuThich.SetToolTip(btnThemTK, "Thêm người dùng");
            tltChuThich.SetToolTip(btnXoaTK, "Xóa người dùng");
            tltChuThich.SetToolTip(btnXoaTT, "Xóa thông tin người dùng");
            frmMain._taikhoan = frmMain._taikhoan.ToUpper();
            if (frmMain._taikhoan == "ADMIN")
            {
                chkAD.Enabled = true;
            }
            else
            {
                chkAD.Enabled = false;
            }
            string _loaiTK = DAL_TK.LayLoatTK(frmMain._taikhoan);
            if (_loaiTK == "1")
            {
                btnXoaTK.Enabled = true;
                btnThemTK.Enabled = true;
                //load danh sach tai khoan
                load_lst();
            }
            else
            {
                lstDanhSachNV.Items.Add(frmMain._taikhoan);
            }
            lstDanhSachNV.SelectedIndex = 0;
        }
        private void btnThemTK_Click(object sender, EventArgs e)
        {

        }

        private void btnXoaTK_Click(object sender, EventArgs e)
        {

        }

        private void btn_SuaTT_Click(object sender, EventArgs e)
        {

        }

        private void btnXoaTT_Click(object sender, EventArgs e)
        {

        }

        private void btnLuu_Click(object sender, EventArgs e)
        {

        }

        private void btnDoiMK_Click(object sender, EventArgs e)
        {

        }

        private void txtHoTen_TextChanged(object sender, EventArgs e)
        {

        }

        private void dtpNgaySinh_ValueChanged(object sender, EventArgs e)
        {

        }
    }
}
