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
    public partial class frmThietBi : Form
    {
        private DAL_ThietBi dal_tb = new DAL_ThietBi();
        private EC_ThietBi ec = new EC_ThietBi();
        private DataTable tblThietBi = new DataTable();
        private bool themmoi;
        void SetNull()
        {
            cboMaPh.Text = "";
            txtThietBi.Text = "";
            txtSoLuong.Text = "";
            txtNhaSanXuat.Text = "";
        }
        private void KhoaDieuKhien()
        {
            cboMaPh.Enabled = false;
            txtThietBi.ReadOnly = true;
            txtSoLuong.ReadOnly = true;
            txtNhaSanXuat.ReadOnly = true;

            btnThem.Enabled = true;
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            btnLuu.Enabled = false;

        }
        private void MoDieuKhien()
        {
            cboMaPh.Enabled = true;
            txtThietBi.ReadOnly = false;
            txtSoLuong.ReadOnly = false;
            txtNhaSanXuat.ReadOnly = false;
        }
        private void HienThi(string where)
        {
            dgvDanhSach.DataSource = dal_tb.TaoBang(where);
        }
        private void DoDLMaLop()
        {

            cboMaPh.DataSource = dal_tb.TruyVanRaMaPh("");
            cboMaPh.DisplayMember = "MaPh";
        }
        public frmThietBi()
        {
            InitializeComponent();
        }


        private void frmThietBi_Load(object sender, EventArgs e)
        {
            HienThi("");
            KhoaDieuKhien();
            DoDLMaLop();
        }

        private void dgvDanhSach_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {

                int dong = e.RowIndex;/*biến dòng :kich vào dòng thì chỉ số dòng đc lưu vào biến dòng */
                cboMaPh.Text = dgvDanhSach.Rows[dong].Cells[0].Value.ToString();
                txtThietBi.Text = dgvDanhSach.Rows[dong].Cells[1].Value.ToString();
                txtSoLuong.Text = dgvDanhSach.Rows[dong].Cells[2].Value.ToString();
                txtNhaSanXuat.Text = dgvDanhSach.Rows[dong].Cells[3].Value.ToString();
            }
            catch
            {

            }
        }
        private void btnCapNhap_Click(object sender, EventArgs e)
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

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
            Dispose();
        }
    }
}
