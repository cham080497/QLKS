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
    public partial class frmQuanLyKhachHang : Form
    {
        DAL_KhachHang KhachHang = new DAL_KhachHang();
        EC_KhachHang customer = new EC_KhachHang();
        DataTable dt = new DataTable();
        bool themmoi = false;
        public void SetNull()
        {
            cbMaKH.Text = "";
            txtName.Text = "";
            txtSDT.Text = "";
            txtDiaChi.Text = "";
            txtCMND.Text = "";
        }
        public void MoDieuKhien()
        {
            txtName.ReadOnly = false;
            txtDiaChi.ReadOnly = false;
            txtSDT.ReadOnly = false;
            txtCMND.ReadOnly = false;
            dgvKhachHang.Enabled = false;
        }
        public void KhoaDieuKhien()
        {
            txtName.ReadOnly = true;
            txtDiaChi.ReadOnly = true;
            txtSDT.ReadOnly = true;
            txtCMND.ReadOnly = true;
            dgvKhachHang.Enabled = true;
        }
        public void Value()
        {
            customer.MaKH = cbMaKH.Text;
            customer.TenKH = txtName.Text;
            customer.NgaySinh = dtp.Text;
            customer.SoDT = txtSDT.Text;
            customer.GT = cbGT.Text;
            customer.DiaChi = txtDiaChi.Text;
            customer.CMND = txtCMND.Text;
        }
        public frmQuanLyKhachHang()
        {
            InitializeComponent();
        }

        private void frmQuanLyKhachHang_Load(object sender, EventArgs e)
        {
            KhoaDieuKhien();
            btnSave.Enabled = false;
            dt = KhachHang.getAllKhachHang();
            dgvKhachHang.DataSource = dt;
        }

        private void dgvKhachHang_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                int dong = e.RowIndex;
                cbMaKH.Text = dgvKhachHang.Rows[dong].Cells[0].Value.ToString();
                txtName.Text = dgvKhachHang.Rows[dong].Cells[1].Value.ToString();
                dtp.Text = dgvKhachHang.Rows[dong].Cells[2].Value.ToString();
                cbGT.Text = dgvKhachHang.Rows[dong].Cells[3].Value.ToString();
                txtSDT.Text = dgvKhachHang.Rows[dong].Cells[4].Value.ToString();
                txtCMND.Text = dgvKhachHang.Rows[dong].Cells[5].Value.ToString();
                txtDiaChi.Text = dgvKhachHang.Rows[dong].Cells[6].Value.ToString();
            }
            catch { }

        }
        private void btnDel_Click(object sender, EventArgs e)
        {

        }

        private void btnEdit_Click(object sender, EventArgs e)
        {

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {

        }

        private void btnThoat_Click(object sender, EventArgs e)
        {

        }

        private void btnSave_Click(object sender, EventArgs e)
        {

        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {

        }

        private void txt_timkiem_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
