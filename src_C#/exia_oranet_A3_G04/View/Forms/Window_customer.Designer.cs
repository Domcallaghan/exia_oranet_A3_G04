namespace exia_oranet_A3_G04
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
            this.Dgv_customer = new System.Windows.Forms.DataGridView();
            this.Lb_customer_lastname = new System.Windows.Forms.Label();
            this.Lb_customer_firstname = new System.Windows.Forms.Label();
            this.Btn_parameters_customer = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_customer)).BeginInit();
            this.SuspendLayout();
            // 
            // Dgv_customer
            // 
            this.Dgv_customer.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.Dgv_customer.Location = new System.Drawing.Point(158, 130);
            this.Dgv_customer.Name = "Dgv_customer";
            this.Dgv_customer.Size = new System.Drawing.Size(600, 400);
            this.Dgv_customer.TabIndex = 0;
            // 
            // Lb_customer_lastname
            // 
            this.Lb_customer_lastname.AutoSize = true;
            this.Lb_customer_lastname.Location = new System.Drawing.Point(639, 96);
            this.Lb_customer_lastname.Name = "Lb_customer_lastname";
            this.Lb_customer_lastname.Size = new System.Drawing.Size(29, 13);
            this.Lb_customer_lastname.TabIndex = 1;
            this.Lb_customer_lastname.Text = "Nom";
            // 
            // Lb_customer_firstname
            // 
            this.Lb_customer_firstname.AutoSize = true;
            this.Lb_customer_firstname.Location = new System.Drawing.Point(590, 96);
            this.Lb_customer_firstname.Name = "Lb_customer_firstname";
            this.Lb_customer_firstname.Size = new System.Drawing.Size(43, 13);
            this.Lb_customer_firstname.TabIndex = 2;
            this.Lb_customer_firstname.Text = "Prenom";
            // 
            // Btn_parameters_customer
            // 
            this.Btn_parameters_customer.Location = new System.Drawing.Point(674, 91);
            this.Btn_parameters_customer.Name = "Btn_parameters_customer";
            this.Btn_parameters_customer.Size = new System.Drawing.Size(75, 23);
            this.Btn_parameters_customer.TabIndex = 3;
            this.Btn_parameters_customer.Text = "param";
            this.Btn_parameters_customer.UseVisualStyleBackColor = true;
            // 
            // Window_customer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 561);
            this.Controls.Add(this.Btn_parameters_customer);
            this.Controls.Add(this.Lb_customer_firstname);
            this.Controls.Add(this.Lb_customer_lastname);
            this.Controls.Add(this.Dgv_customer);
            this.Name = "Window_customer";
            this.Text = "Pharmaweb";
            this.Load += new System.EventHandler(this.customer_Window_Load);
            ((System.ComponentModel.ISupportInitialize)(this.Dgv_customer)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView Dgv_customer;
        private System.Windows.Forms.Label Lb_customer_lastname;
        private System.Windows.Forms.Label Lb_customer_firstname;
        private System.Windows.Forms.Button Btn_parameters_customer;
    }
}

