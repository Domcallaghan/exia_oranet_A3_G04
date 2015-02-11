namespace Projet_Csharp.View.Forms
{
    partial class Window_order
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
            this.Tb_description = new System.Windows.Forms.TextBox();
            this.Tb_contraindication = new System.Windows.Forms.TextBox();
            this.Btn_order = new System.Windows.Forms.Button();
            this.Lb_customer_name = new System.Windows.Forms.Label();
            this.Btn_config = new System.Windows.Forms.Button();
            this.btn_back = new System.Windows.Forms.Button();
            this.Lb_description = new System.Windows.Forms.Label();
            this.Lb_contraindication = new System.Windows.Forms.Label();
            this.Lb_order = new System.Windows.Forms.Label();
            this.Dgv_order = new System.Windows.Forms.DataGridView();
            this.Btn_delete = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_order)).BeginInit();
            this.SuspendLayout();
            // 
            // Tb_description
            // 
            this.Tb_description.Location = new System.Drawing.Point(95, 94);
            this.Tb_description.Multiline = true;
            this.Tb_description.Name = "Tb_description";
            this.Tb_description.ReadOnly = true;
            this.Tb_description.Size = new System.Drawing.Size(237, 292);
            this.Tb_description.TabIndex = 0;
            // 
            // Tb_contraindication
            // 
            this.Tb_contraindication.Location = new System.Drawing.Point(95, 411);
            this.Tb_contraindication.Multiline = true;
            this.Tb_contraindication.Name = "Tb_contraindication";
            this.Tb_contraindication.ReadOnly = true;
            this.Tb_contraindication.Size = new System.Drawing.Size(237, 123);
            this.Tb_contraindication.TabIndex = 1;
            // 
            // Btn_order
            // 
            this.Btn_order.Location = new System.Drawing.Point(419, 473);
            this.Btn_order.Name = "Btn_order";
            this.Btn_order.Size = new System.Drawing.Size(305, 27);
            this.Btn_order.TabIndex = 3;
            this.Btn_order.Text = "Commander";
            this.Btn_order.UseVisualStyleBackColor = true;
            this.Btn_order.Click += new System.EventHandler(this.Btn_order_Click);
            // 
            // Lb_customer_name
            // 
            this.Lb_customer_name.AutoSize = true;
            this.Lb_customer_name.Location = new System.Drawing.Point(548, 60);
            this.Lb_customer_name.Name = "Lb_customer_name";
            this.Lb_customer_name.Size = new System.Drawing.Size(74, 13);
            this.Lb_customer_name.TabIndex = 4;
            this.Lb_customer_name.Text = "Alexis Barreau";
            // 
            // Btn_config
            // 
            this.Btn_config.Location = new System.Drawing.Point(649, 60);
            this.Btn_config.Name = "Btn_config";
            this.Btn_config.Size = new System.Drawing.Size(75, 23);
            this.Btn_config.TabIndex = 5;
            this.Btn_config.Text = "Config";
            this.Btn_config.UseVisualStyleBackColor = true;
            this.Btn_config.Click += new System.EventHandler(this.Btn_config_Click);
            // 
            // btn_back
            // 
            this.btn_back.Location = new System.Drawing.Point(649, 31);
            this.btn_back.Name = "btn_back";
            this.btn_back.Size = new System.Drawing.Size(75, 23);
            this.btn_back.TabIndex = 6;
            this.btn_back.Text = "Retour";
            this.btn_back.UseVisualStyleBackColor = true;
            this.btn_back.Click += new System.EventHandler(this.btn_return_Click);
            // 
            // Lb_description
            // 
            this.Lb_description.AutoSize = true;
            this.Lb_description.Location = new System.Drawing.Point(92, 78);
            this.Lb_description.Name = "Lb_description";
            this.Lb_description.Size = new System.Drawing.Size(60, 13);
            this.Lb_description.TabIndex = 7;
            this.Lb_description.Text = "Description";
            // 
            // Lb_contraindication
            // 
            this.Lb_contraindication.AutoSize = true;
            this.Lb_contraindication.Location = new System.Drawing.Point(92, 395);
            this.Lb_contraindication.Name = "Lb_contraindication";
            this.Lb_contraindication.Size = new System.Drawing.Size(96, 13);
            this.Lb_contraindication.TabIndex = 8;
            this.Lb_contraindication.Text = "Contres-indications";
            // 
            // Lb_order
            // 
            this.Lb_order.AutoSize = true;
            this.Lb_order.Location = new System.Drawing.Point(419, 78);
            this.Lb_order.Name = "Lb_order";
            this.Lb_order.Size = new System.Drawing.Size(60, 13);
            this.Lb_order.TabIndex = 9;
            this.Lb_order.Text = "Commande";
            // 
            // Dgv_order
            // 
            this.Dgv_order.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_order.Location = new System.Drawing.Point(419, 94);
            this.Dgv_order.Name = "Dgv_order";
            this.Dgv_order.Size = new System.Drawing.Size(305, 373);
            this.Dgv_order.TabIndex = 10;
            // 
            // Btn_delete
            // 
            this.Btn_delete.Location = new System.Drawing.Point(419, 506);
            this.Btn_delete.Name = "Btn_delete";
            this.Btn_delete.Size = new System.Drawing.Size(305, 28);
            this.Btn_delete.TabIndex = 11;
            this.Btn_delete.Text = "Supprimer";
            this.Btn_delete.UseVisualStyleBackColor = true;
            // 
            // Window_order
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.Btn_delete);
            this.Controls.Add(this.Dgv_order);
            this.Controls.Add(this.Lb_order);
            this.Controls.Add(this.Lb_contraindication);
            this.Controls.Add(this.Lb_description);
            this.Controls.Add(this.btn_back);
            this.Controls.Add(this.Btn_config);
            this.Controls.Add(this.Lb_customer_name);
            this.Controls.Add(this.Btn_order);
            this.Controls.Add(this.Tb_contraindication);
            this.Controls.Add(this.Tb_description);
            this.Name = "Window_order";
            this.Text = "Window_order";
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_order)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox Tb_description;
        private System.Windows.Forms.TextBox Tb_contraindication;
        private System.Windows.Forms.Button Btn_order;
        private System.Windows.Forms.Label Lb_customer_name;
        private System.Windows.Forms.Button Btn_config;
        private System.Windows.Forms.Button btn_back;
        private System.Windows.Forms.Label Lb_description;
        private System.Windows.Forms.Label Lb_contraindication;
        private System.Windows.Forms.Label Lb_order;
        private System.Windows.Forms.DataGridView Dgv_order;
        private System.Windows.Forms.Button Btn_delete;
    }
}