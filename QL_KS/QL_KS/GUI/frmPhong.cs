using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QL_KS;
namespace QL_KS.GUI
{
    public partial class frmPhong : Form
    {
        private DAL_Phong dal_Ph = new DAL_Phong();
        private EC_Phong ec_Ph = new EC_Phong();
        private DataTable tblPhong = new DataTable();
        private bool themmoi;

        private void SetNull()
        {
            txtMaPhong.Text = "";
            txtSoPhong.Text = "";
            txtTrangThai.Text = "";
        }

        private void KhoaChucNang()
        {
            btnLamMoi.Enabled = false;
            btnLuu.Enabled = false;
            txtMaPhong.ReadOnly = true;
            txtSoPhong.ReadOnly = true;
            txtTrangThai.ReadOnly = true;
        }

        private void MoChucNang()
        {
            btnLamMoi.Enabled = true;
            btnLuu.Enabled = true;
            txtMaPhong.ReadOnly = false;
            txtSoPhong.ReadOnly = false;
            txtTrangThai.ReadOnly = false;
        }

        private void HienThi(string where)
        {
            dgvDanhSach.DataSource = dal_Ph.TaoBang(where);
        }
        public frmPhong()
        {
            InitializeComponent();
        }
        private void frmPhong_Load(object sender, EventArgs e)
        {
            HienThi("");
            KhoaChucNang();
        }

        private void btnLamMoi_Click(object sender, EventArgs e)
        {

        }
 
        private void btnXoa_Click(object sender, EventArgs e)
        {

        }

        private void btnSua_Click(object sender, EventArgs e)
        {

        }

        private void btnThem_Click(object sender, EventArgs e)
        {

        }
        private void btnLuu_Click(object sender, EventArgs e)
        {

        }

        private void dgvDanhSach_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int dong = e.RowIndex;
            txtMaPhong.Text = dgvDanhSach.Rows[dong].Cells[0].Value.ToString();
            txtSoPhong.Text = dgvDanhSach.Rows[dong].Cells[1].Value.ToString();
            txtTrangThai.Text = dgvDanhSach.Rows[dong].Cells[2].Value.ToString();
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
            Dispose();
        }
    }
}
