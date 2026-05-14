procedure InitializeComponent;
    begin
        self.gLControl1 := new OpenTK.GLControl();
        self.SuspendLayout();
        // 
        // gLControl1
        // 
        self.gLControl1.BackColor := System.Drawing.Color.Black;
        self.gLControl1.Dock := System.Windows.Forms.DockStyle.Fill;
        self.gLControl1.Location := new System.Drawing.Point(0, 0);
        self.gLControl1.Margin := new System.Windows.Forms.Padding(4, 4, 4, 4);
        self.gLControl1.Name := 'gLControl1';
        self.gLControl1.Size := new System.Drawing.Size(559, 376);
        self.gLControl1.TabIndex := 0;
        self.gLControl1.VSync := false;
        self.gLControl1.Paint += gLControl1_Paint;
        // 
        // Form1
        // 
        self.ClientSize := new System.Drawing.Size(559, 376);
        self.Controls.Add(self.gLControl1);
        self.Name := 'Form1';
        self.Text := 'Form1';
        self.FormClosing += Form1_FormClosing;
        self.Load += Form1_Load;
        self.Paint += Form1_Paint;
        self.ResumeLayout(false);
    end;
