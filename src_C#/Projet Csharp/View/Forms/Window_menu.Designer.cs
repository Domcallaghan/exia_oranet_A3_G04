namespace Projet_Csharp.View.Forms
{
    partial class Window_menu
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
            this.Bmp_logo = new System.Windows.Forms.Label();
            this.Tb_login = new System.Windows.Forms.TextBox();
            this.Tb_password = new System.Windows.Forms.TextBox();
            this.Lb_inscription = new System.Windows.Forms.Label();
            this.Btn_connexion = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Bmp_logo
            // 
            this.Bmp_logo.AutoSize = true;
            this.Bmp_logo.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Bmp_logo.Location = new System.Drawing.Point(93, 50);
            this.Bmp_logo.Name = "Bmp_logo";
            this.Bmp_logo.Size = new System.Drawing.Size(206, 31);
            this.Bmp_logo.TabIndex = 0;
            this.Bmp_logo.Text = "PHARMA_WEB";
            // 
            // Tb_login
            // 
            this.Tb_login.Location = new System.Drawing.Point(81, 101);
            this.Tb_login.Name = "Tb_login";
            this.Tb_login.Size = new System.Drawing.Size(233, 20);
            this.Tb_login.TabIndex = 1;
            this.Tb_login.Text = "Login";
            // 
            // Tb_password
            // 
            this.Tb_password.Location = new System.Drawing.Point(81, 145);
            this.Tb_password.Name = "Tb_password";
            this.Tb_password.Size = new System.Drawing.Size(233, 20);
            this.Tb_password.TabIndex = 2;
            this.Tb_password.Text = "Password";
            this.Tb_password.UseSystemPasswordChar = true;
            // 
            // Lb_inscription
            // 
            this.Lb_inscription.AutoSize = true;
            this.Lb_inscription.Location = new System.Drawing.Point(87, 188);
            this.Lb_inscription.Name = "Lb_inscription";
            this.Lb_inscription.Size = new System.Drawing.Size(49, 13);
            this.Lb_inscription.TabIndex = 3;
            this.Lb_inscription.Text = "S\'inscrire";
            // 
            // Btn_connexion
            // 
            this.Btn_connexion.Location = new System.Drawing.Point(166, 188);
            this.Btn_connexion.Name = "Btn_connexion";
            this.Btn_connexion.Size = new System.Drawing.Size(148, 23);
            this.Btn_connexion.TabIndex = 4;
            this.Btn_connexion.Text = "Se connecter";
            this.Btn_connexion.UseVisualStyleBackColor = true;
            // 
            // Window_menu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(384, 261);
            this.Controls.Add(this.Btn_connexion);
            this.Controls.Add(this.Lb_inscription);
            this.Controls.Add(this.Tb_password);
            this.Controls.Add(this.Tb_login);
            this.Controls.Add(this.Bmp_logo);
            this.Name = "Window_menu";
            this.Text = "Window_menu";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Bmp_logo;
        private System.Windows.Forms.TextBox Tb_login;
        private System.Windows.Forms.TextBox Tb_password;
        private System.Windows.Forms.Label Lb_inscription;
        private System.Windows.Forms.Button Btn_connexion;
    }
}