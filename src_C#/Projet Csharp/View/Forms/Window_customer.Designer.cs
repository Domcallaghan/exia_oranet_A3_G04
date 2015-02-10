namespace Projet_Csharp
{
    partial class Window_customer
    {
        /// <summary>
        /// Variable nécessaire au concepteur.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Nettoyage des ressources utilisées.
        /// </summary>
        /// <param name="disposing">true si les ressources managées doivent être supprimées ; sinon, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Code généré par le Concepteur Windows Form

        /// <summary>
        /// Méthode requise pour la prise en charge du concepteur - ne modifiez pas
        /// le contenu de cette méthode avec l'éditeur de code.
        /// </summary>
        private void InitializeComponent()
        {
            this.Dgv_category = new System.Windows.Forms.DataGridView();
            this.Dgv_medicine = new System.Windows.Forms.DataGridView();
            this.Tb_basket = new System.Windows.Forms.TextBox();
            this.Tb_description = new System.Windows.Forms.TextBox();
            this.Tb_contraindication = new System.Windows.Forms.TextBox();
            this.Rb_parmacie = new System.Windows.Forms.RadioButton();
            this.Rb_paraparmacie = new System.Windows.Forms.RadioButton();
            this.Lb_customer_name = new System.Windows.Forms.Label();
            this.Btn_config = new System.Windows.Forms.Button();
            this.Btn_add = new System.Windows.Forms.Button();
            this.Btn_remove = new System.Windows.Forms.Button();
            this.Tb_number = new System.Windows.Forms.TextBox();
            this.Lb_show_notice = new System.Windows.Forms.Label();
            this.Tb_total_price = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_category)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_medicine)).BeginInit();
            this.SuspendLayout();
            // 
            // Dgv_category
            // 
            this.Dgv_category.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_category.Location = new System.Drawing.Point(12, 104);
            this.Dgv_category.Name = "Dgv_category";
            this.Dgv_category.Size = new System.Drawing.Size(230, 315);
            this.Dgv_category.TabIndex = 0;
            // 
            // Dgv_medicine
            // 
            this.Dgv_medicine.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_medicine.Location = new System.Drawing.Point(248, 104);
            this.Dgv_medicine.Name = "Dgv_medicine";
            this.Dgv_medicine.Size = new System.Drawing.Size(325, 315);
            this.Dgv_medicine.TabIndex = 1;
            // 
            // Tb_basket
            // 
            this.Tb_basket.Location = new System.Drawing.Point(592, 104);
            this.Tb_basket.Multiline = true;
            this.Tb_basket.Name = "Tb_basket";
            this.Tb_basket.ReadOnly = true;
            this.Tb_basket.Size = new System.Drawing.Size(180, 297);
            this.Tb_basket.TabIndex = 2;
            // 
            // Tb_description
            // 
            this.Tb_description.Location = new System.Drawing.Point(12, 460);
            this.Tb_description.Multiline = true;
            this.Tb_description.Name = "Tb_description";
            this.Tb_description.ReadOnly = true;
            this.Tb_description.Size = new System.Drawing.Size(560, 89);
            this.Tb_description.TabIndex = 3;
            // 
            // Tb_contraindication
            // 
            this.Tb_contraindication.Location = new System.Drawing.Point(592, 460);
            this.Tb_contraindication.Multiline = true;
            this.Tb_contraindication.Name = "Tb_contraindication";
            this.Tb_contraindication.ReadOnly = true;
            this.Tb_contraindication.Size = new System.Drawing.Size(180, 89);
            this.Tb_contraindication.TabIndex = 4;
            // 
            // Rb_parmacie
            // 
            this.Rb_parmacie.AutoSize = true;
            this.Rb_parmacie.Location = new System.Drawing.Point(138, 81);
            this.Rb_parmacie.Name = "Rb_parmacie";
            this.Rb_parmacie.Size = new System.Drawing.Size(75, 17);
            this.Rb_parmacie.TabIndex = 5;
            this.Rb_parmacie.TabStop = true;
            this.Rb_parmacie.Text = "Pharmacie";
            this.Rb_parmacie.UseVisualStyleBackColor = true;
            // 
            // Rb_paraparmacie
            // 
            this.Rb_paraparmacie.AutoSize = true;
            this.Rb_paraparmacie.Location = new System.Drawing.Point(274, 81);
            this.Rb_paraparmacie.Name = "Rb_paraparmacie";
            this.Rb_paraparmacie.Size = new System.Drawing.Size(96, 17);
            this.Rb_paraparmacie.TabIndex = 6;
            this.Rb_paraparmacie.TabStop = true;
            this.Rb_paraparmacie.Text = "Parapharmacie";
            this.Rb_paraparmacie.UseVisualStyleBackColor = true;
            // 
            // Lb_customer_name
            // 
            this.Lb_customer_name.AutoSize = true;
            this.Lb_customer_name.Location = new System.Drawing.Point(467, 33);
            this.Lb_customer_name.Name = "Lb_customer_name";
            this.Lb_customer_name.Size = new System.Drawing.Size(68, 13);
            this.Lb_customer_name.TabIndex = 7;
            this.Lb_customer_name.Text = "Prenom Nom";
            // 
            // Btn_config
            // 
            this.Btn_config.Location = new System.Drawing.Point(541, 28);
            this.Btn_config.Name = "Btn_config";
            this.Btn_config.Size = new System.Drawing.Size(75, 23);
            this.Btn_config.TabIndex = 8;
            this.Btn_config.Text = "config";
            this.Btn_config.UseVisualStyleBackColor = true;
            // 
            // Btn_add
            // 
            this.Btn_add.Location = new System.Drawing.Point(470, 425);
            this.Btn_add.Name = "Btn_add";
            this.Btn_add.Size = new System.Drawing.Size(75, 23);
            this.Btn_add.TabIndex = 9;
            this.Btn_add.Text = "Ajouter";
            this.Btn_add.UseVisualStyleBackColor = true;
            // 
            // Btn_remove
            // 
            this.Btn_remove.Location = new System.Drawing.Point(592, 425);
            this.Btn_remove.Name = "Btn_remove";
            this.Btn_remove.Size = new System.Drawing.Size(75, 23);
            this.Btn_remove.TabIndex = 10;
            this.Btn_remove.Text = "Retirer";
            this.Btn_remove.UseVisualStyleBackColor = true;
            // 
            // Tb_number
            // 
            this.Tb_number.Location = new System.Drawing.Point(551, 428);
            this.Tb_number.MaxLength = 9;
            this.Tb_number.Name = "Tb_number";
            this.Tb_number.Size = new System.Drawing.Size(21, 20);
            this.Tb_number.TabIndex = 11;
            this.Tb_number.Text = "1";
            this.Tb_number.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // Lb_show_notice
            // 
            this.Lb_show_notice.AutoSize = true;
            this.Lb_show_notice.Location = new System.Drawing.Point(13, 434);
            this.Lb_show_notice.Name = "Lb_show_notice";
            this.Lb_show_notice.Size = new System.Drawing.Size(75, 13);
            this.Lb_show_notice.TabIndex = 12;
            this.Lb_show_notice.Text = "Afficher notice";
            // 
            // Tb_total_price
            // 
            this.Tb_total_price.Location = new System.Drawing.Point(592, 398);
            this.Tb_total_price.Name = "Tb_total_price";
            this.Tb_total_price.ReadOnly = true;
            this.Tb_total_price.Size = new System.Drawing.Size(180, 20);
            this.Tb_total_price.TabIndex = 13;
            // 
            // Window_customer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.Tb_total_price);
            this.Controls.Add(this.Lb_show_notice);
            this.Controls.Add(this.Tb_number);
            this.Controls.Add(this.Btn_remove);
            this.Controls.Add(this.Btn_add);
            this.Controls.Add(this.Btn_config);
            this.Controls.Add(this.Lb_customer_name);
            this.Controls.Add(this.Rb_paraparmacie);
            this.Controls.Add(this.Rb_parmacie);
            this.Controls.Add(this.Tb_contraindication);
            this.Controls.Add(this.Tb_description);
            this.Controls.Add(this.Tb_basket);
            this.Controls.Add(this.Dgv_medicine);
            this.Controls.Add(this.Dgv_category);
            this.Name = "Window_customer";
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_category)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_medicine)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView Dgv_category;
        private System.Windows.Forms.DataGridView Dgv_medicine;
        private System.Windows.Forms.TextBox Tb_basket;
        private System.Windows.Forms.TextBox Tb_description;
        private System.Windows.Forms.TextBox Tb_contraindication;
        private System.Windows.Forms.RadioButton Rb_parmacie;
        private System.Windows.Forms.RadioButton Rb_paraparmacie;
        private System.Windows.Forms.Label Lb_customer_name;
        private System.Windows.Forms.Button Btn_config;
        private System.Windows.Forms.Button Btn_add;
        private System.Windows.Forms.Button Btn_remove;
        private System.Windows.Forms.TextBox Tb_number;
        private System.Windows.Forms.Label Lb_show_notice;
        private System.Windows.Forms.TextBox Tb_total_price;
    }
}

