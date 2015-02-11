namespace Projet_Csharp.View.Forms
{
    partial class Window_validate_order
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
            this.Btn_validate = new System.Windows.Forms.Button();
            this.Btn_refuse = new System.Windows.Forms.Button();
            this.Btn_contact = new System.Windows.Forms.Button();
            this.Lb_description = new System.Windows.Forms.Label();
            this.Lb_contraindication = new System.Windows.Forms.Label();
            this.Lb_order = new System.Windows.Forms.Label();
            this.Lb_name_customer = new System.Windows.Forms.Label();
            this.Dgv_order = new System.Windows.Forms.DataGridView();
            this.Tb_description = new System.Windows.Forms.TextBox();
            this.Tb_contraindication = new System.Windows.Forms.TextBox();
            this.Btn_back = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_order)).BeginInit();
            this.SuspendLayout();
            // 
            // Btn_validate
            // 
            this.Btn_validate.Location = new System.Drawing.Point(422, 517);
            this.Btn_validate.Name = "Btn_validate";
            this.Btn_validate.Size = new System.Drawing.Size(86, 29);
            this.Btn_validate.TabIndex = 2;
            this.Btn_validate.Text = "Valider";
            this.Btn_validate.UseVisualStyleBackColor = true;
            this.Btn_validate.Click += new System.EventHandler(this.Btn_validate_Click);
            // 
            // Btn_refuse
            // 
            this.Btn_refuse.Location = new System.Drawing.Point(656, 517);
            this.Btn_refuse.Name = "Btn_refuse";
            this.Btn_refuse.Size = new System.Drawing.Size(75, 29);
            this.Btn_refuse.TabIndex = 3;
            this.Btn_refuse.Text = "Refuser";
            this.Btn_refuse.UseVisualStyleBackColor = true;
            this.Btn_refuse.Click += new System.EventHandler(this.Btn_refuse_Click);
            // 
            // Btn_contact
            // 
            this.Btn_contact.Location = new System.Drawing.Point(540, 517);
            this.Btn_contact.Name = "Btn_contact";
            this.Btn_contact.Size = new System.Drawing.Size(80, 29);
            this.Btn_contact.TabIndex = 4;
            this.Btn_contact.Text = "Contacter";
            this.Btn_contact.UseVisualStyleBackColor = true;
            this.Btn_contact.Click += new System.EventHandler(this.Btn_contact_Click);
            // 
            // Lb_description
            // 
            this.Lb_description.AutoSize = true;
            this.Lb_description.Location = new System.Drawing.Point(85, 75);
            this.Lb_description.Name = "Lb_description";
            this.Lb_description.Size = new System.Drawing.Size(60, 13);
            this.Lb_description.TabIndex = 6;
            this.Lb_description.Text = "Description";
            // 
            // Lb_contraindication
            // 
            this.Lb_contraindication.AutoSize = true;
            this.Lb_contraindication.Location = new System.Drawing.Point(85, 396);
            this.Lb_contraindication.Name = "Lb_contraindication";
            this.Lb_contraindication.Size = new System.Drawing.Size(96, 13);
            this.Lb_contraindication.TabIndex = 7;
            this.Lb_contraindication.Text = "Contres-indications";
            // 
            // Lb_order
            // 
            this.Lb_order.AutoSize = true;
            this.Lb_order.Location = new System.Drawing.Point(419, 75);
            this.Lb_order.Name = "Lb_order";
            this.Lb_order.Size = new System.Drawing.Size(60, 13);
            this.Lb_order.TabIndex = 8;
            this.Lb_order.Text = "Commande";
            // 
            // Lb_name_customer
            // 
            this.Lb_name_customer.AutoSize = true;
            this.Lb_name_customer.Location = new System.Drawing.Point(85, 22);
            this.Lb_name_customer.Name = "Lb_name_customer";
            this.Lb_name_customer.Size = new System.Drawing.Size(74, 13);
            this.Lb_name_customer.TabIndex = 9;
            this.Lb_name_customer.Text = "Alexis Barreau";
            // 
            // Dgv_order
            // 
            this.Dgv_order.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_order.Location = new System.Drawing.Point(422, 91);
            this.Dgv_order.Name = "Dgv_order";
            this.Dgv_order.Size = new System.Drawing.Size(309, 410);
            this.Dgv_order.TabIndex = 10;
            // 
            // Tb_description
            // 
            this.Tb_description.Location = new System.Drawing.Point(88, 91);
            this.Tb_description.Multiline = true;
            this.Tb_description.Name = "Tb_description";
            this.Tb_description.ReadOnly = true;
            this.Tb_description.Size = new System.Drawing.Size(247, 290);
            this.Tb_description.TabIndex = 11;
            // 
            // Tb_contraindication
            // 
            this.Tb_contraindication.Location = new System.Drawing.Point(88, 413);
            this.Tb_contraindication.Multiline = true;
            this.Tb_contraindication.Name = "Tb_contraindication";
            this.Tb_contraindication.ReadOnly = true;
            this.Tb_contraindication.Size = new System.Drawing.Size(247, 133);
            this.Tb_contraindication.TabIndex = 12;
            // 
            // Btn_back
            // 
            this.Btn_back.Location = new System.Drawing.Point(656, 22);
            this.Btn_back.Name = "Btn_back";
            this.Btn_back.Size = new System.Drawing.Size(75, 23);
            this.Btn_back.TabIndex = 13;
            this.Btn_back.Text = "Retour";
            this.Btn_back.UseVisualStyleBackColor = true;
            this.Btn_back.Click += new System.EventHandler(this.Btn_back_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(183, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 13);
            this.label1.TabIndex = 14;
            this.label1.Text = "label1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(250, 22);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 15;
            this.label2.Text = "label2";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(299, 22);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(35, 13);
            this.label3.TabIndex = 16;
            this.label3.Text = "label3";
            // 
            // Window_validate_order
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.Btn_back);
            this.Controls.Add(this.Tb_contraindication);
            this.Controls.Add(this.Tb_description);
            this.Controls.Add(this.Dgv_order);
            this.Controls.Add(this.Lb_name_customer);
            this.Controls.Add(this.Lb_order);
            this.Controls.Add(this.Lb_contraindication);
            this.Controls.Add(this.Lb_description);
            this.Controls.Add(this.Btn_contact);
            this.Controls.Add(this.Btn_refuse);
            this.Controls.Add(this.Btn_validate);
            this.Name = "Window_validate_order";
            this.Text = "Window_validate_order";
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_order)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button Btn_validate;
        private System.Windows.Forms.Button Btn_refuse;
        private System.Windows.Forms.Button Btn_contact;
        private System.Windows.Forms.Label Lb_description;
        private System.Windows.Forms.Label Lb_contraindication;
        private System.Windows.Forms.Label Lb_order;
        private System.Windows.Forms.Label Lb_name_customer;
        private System.Windows.Forms.DataGridView Dgv_order;
        private System.Windows.Forms.TextBox Tb_description;
        private System.Windows.Forms.TextBox Tb_contraindication;
        private System.Windows.Forms.Button Btn_back;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
    }
}