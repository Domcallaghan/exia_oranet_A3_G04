namespace Projet_Csharp.View.Forms
{
    partial class Window_parmacien
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Dgv_orders = new System.Windows.Forms.DataGridView();
            this.Dgv_stock = new System.Windows.Forms.DataGridView();
            this.Btn_show_order = new System.Windows.Forms.Button();
            this.Btn_order_medicien = new System.Windows.Forms.Button();
            this.Lb_stocks = new System.Windows.Forms.Label();
            this.Lb_orders = new System.Windows.Forms.Label();
            this.Tb_turnover = new System.Windows.Forms.TextBox();
            this.Lb_turnover = new System.Windows.Forms.Label();
            this.Rb_parmacy = new System.Windows.Forms.RadioButton();
            this.Rb_paraparmacy = new System.Windows.Forms.RadioButton();
            this.Btn_logout = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_orders)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_stock)).BeginInit();
            this.SuspendLayout();
            // 
            // Dgv_orders
            // 
            this.Dgv_orders.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_orders.Location = new System.Drawing.Point(307, 112);
            this.Dgv_orders.Name = "Dgv_orders";
            this.Dgv_orders.Size = new System.Drawing.Size(465, 236);
            this.Dgv_orders.TabIndex = 0;
            // 
            // Dgv_stock
            // 
            this.Dgv_stock.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_stock.Location = new System.Drawing.Point(28, 112);
            this.Dgv_stock.Name = "Dgv_stock";
            this.Dgv_stock.Size = new System.Drawing.Size(257, 236);
            this.Dgv_stock.TabIndex = 1;
            // 
            // Btn_show_order
            // 
            this.Btn_show_order.Location = new System.Drawing.Point(475, 370);
            this.Btn_show_order.Name = "Btn_show_order";
            this.Btn_show_order.Size = new System.Drawing.Size(137, 23);
            this.Btn_show_order.TabIndex = 2;
            this.Btn_show_order.Text = "Voir commande";
            this.Btn_show_order.UseVisualStyleBackColor = true;
            this.Btn_show_order.Click += new System.EventHandler(this.Btn_show_order_Click);
            // 
            // Btn_order_medicien
            // 
            this.Btn_order_medicien.Location = new System.Drawing.Point(28, 370);
            this.Btn_order_medicien.Name = "Btn_order_medicien";
            this.Btn_order_medicien.Size = new System.Drawing.Size(257, 23);
            this.Btn_order_medicien.TabIndex = 3;
            this.Btn_order_medicien.Text = "Commander des médicaments";
            this.Btn_order_medicien.UseVisualStyleBackColor = true;
            this.Btn_order_medicien.Click += new System.EventHandler(this.Btn_order_medicien_Click);
            // 
            // Lb_stocks
            // 
            this.Lb_stocks.AutoSize = true;
            this.Lb_stocks.Location = new System.Drawing.Point(21, 91);
            this.Lb_stocks.Name = "Lb_stocks";
            this.Lb_stocks.Size = new System.Drawing.Size(40, 13);
            this.Lb_stocks.TabIndex = 4;
            this.Lb_stocks.Text = "Stocks";
            // 
            // Lb_orders
            // 
            this.Lb_orders.AutoSize = true;
            this.Lb_orders.Location = new System.Drawing.Point(304, 91);
            this.Lb_orders.Name = "Lb_orders";
            this.Lb_orders.Size = new System.Drawing.Size(65, 13);
            this.Lb_orders.TabIndex = 5;
            this.Lb_orders.Text = "Commandes";
            // 
            // Tb_turnover
            // 
            this.Tb_turnover.Location = new System.Drawing.Point(24, 442);
            this.Tb_turnover.Name = "Tb_turnover";
            this.Tb_turnover.ReadOnly = true;
            this.Tb_turnover.Size = new System.Drawing.Size(261, 20);
            this.Tb_turnover.TabIndex = 6;
            // 
            // Lb_turnover
            // 
            this.Lb_turnover.AutoSize = true;
            this.Lb_turnover.Location = new System.Drawing.Point(28, 423);
            this.Lb_turnover.Name = "Lb_turnover";
            this.Lb_turnover.Size = new System.Drawing.Size(116, 13);
            this.Lb_turnover.TabIndex = 7;
            this.Lb_turnover.Text = "Chiffre d\'affaire estimé :";
            // 
            // Rb_parmacy
            // 
            this.Rb_parmacy.AutoSize = true;
            this.Rb_parmacy.Checked = true;
            this.Rb_parmacy.Location = new System.Drawing.Point(80, 91);
            this.Rb_parmacy.Name = "Rb_parmacy";
            this.Rb_parmacy.Size = new System.Drawing.Size(75, 17);
            this.Rb_parmacy.TabIndex = 8;
            this.Rb_parmacy.TabStop = true;
            this.Rb_parmacy.Text = "Pharmacie";
            this.Rb_parmacy.UseVisualStyleBackColor = true;
            // 
            // Rb_paraparmacy
            // 
            this.Rb_paraparmacy.AutoSize = true;
            this.Rb_paraparmacy.Location = new System.Drawing.Point(186, 91);
            this.Rb_paraparmacy.Name = "Rb_paraparmacy";
            this.Rb_paraparmacy.Size = new System.Drawing.Size(96, 17);
            this.Rb_paraparmacy.TabIndex = 9;
            this.Rb_paraparmacy.Text = "Parapharmacie";
            this.Rb_paraparmacy.UseVisualStyleBackColor = true;
            // 
            // Btn_logout
            // 
            this.Btn_logout.Location = new System.Drawing.Point(693, 81);
            this.Btn_logout.Name = "Btn_logout";
            this.Btn_logout.Size = new System.Drawing.Size(79, 23);
            this.Btn_logout.TabIndex = 10;
            this.Btn_logout.Text = "Déconnexion";
            this.Btn_logout.UseVisualStyleBackColor = true;
            this.Btn_logout.Click += new System.EventHandler(this.Btn_logout_Click);
            // 
            // Window_parmacien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.Btn_logout);
            this.Controls.Add(this.Rb_paraparmacy);
            this.Controls.Add(this.Rb_parmacy);
            this.Controls.Add(this.Lb_turnover);
            this.Controls.Add(this.Tb_turnover);
            this.Controls.Add(this.Lb_orders);
            this.Controls.Add(this.Lb_stocks);
            this.Controls.Add(this.Btn_order_medicien);
            this.Controls.Add(this.Btn_show_order);
            this.Controls.Add(this.Dgv_stock);
            this.Controls.Add(this.Dgv_orders);
            this.Name = "Window_parmacien";
            this.Text = "Window_parmacien";
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_orders)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_stock)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView Dgv_orders;
        private System.Windows.Forms.DataGridView Dgv_stock;
        private System.Windows.Forms.Button Btn_show_order;
        private System.Windows.Forms.Button Btn_order_medicien;
        private System.Windows.Forms.Label Lb_stocks;
        private System.Windows.Forms.Label Lb_orders;
        private System.Windows.Forms.TextBox Tb_turnover;
        private System.Windows.Forms.Label Lb_turnover;
        private System.Windows.Forms.RadioButton Rb_parmacy;
        private System.Windows.Forms.RadioButton Rb_paraparmacy;
        private System.Windows.Forms.Button Btn_logout;
    }
}