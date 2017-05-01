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
    public partial class frmQuanLyDV : Form
    {
        private DAL_DichVu DAL_DV = new DAL_DichVu();
        private EC_DichVu EC_DV = new EC_DichVu();
        private bool _them = false;
        public frmQuanLyDV()
        {
            InitializeComponent();
        }
        private void frmQuanLyDV_Load(object sender, EventArgs e)
        {
            dgvDanhSach.DataSource = DAL_DV.GetAll();
        }
        private void dgvDanhSach_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            txtGia.Text = dgvDanhSach.Rows[e.RowIndex].Cells["Gia"].Value.ToString();
            txtMa.Text = dgvDanhSach.Rows[e.RowIndex].Cells["MaDV"].Value.ToString();
            txtTen.Text = dgvDanhSach.Rows[e.RowIndex].Cells["TenDV"].Value.ToString();
        }
        private void btnThem_Click(object sender, EventArgs e)
        {

        }

        private void btnSua_Click(object sender, EventArgs e)
        {

        }

        private void btnXoa_Click(object sender, EventArgs e)
        {

        }

        private void btnLuu_Click(object sender, EventArgs e)
        {

        }
    }
}
