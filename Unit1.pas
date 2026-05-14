Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms,
     OpenTK, OpenTK.Graphics;

type
  Form1 = class(Form)
    nRedByte:Byte;
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure Form1_FormClosing(sender: Object; e: FormClosingEventArgs);
    procedure Form1_Paint(sender: Object; e: PaintEventArgs);
    procedure gLControl1_Paint(sender: Object; e: PaintEventArgs);
    procedure Application_Idle(sender: Object;  e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    gLControl1: OpenTK.GLControl;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.Application_Idle(sender: Object;  e: EventArgs);
begin
  Inc(nRedByte);
  Invalidate(); 
end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  nRedByte := 0;
  Application.Idle += Application_Idle;
end;

procedure Form1.Form1_FormClosing(sender: Object; e: FormClosingEventArgs);
begin
  Application.Idle -= Application_Idle;
end;

procedure Form1.Form1_Paint(sender: Object; e: PaintEventArgs);
begin
  glControl1.Invalidate();
end;

procedure Form1.gLControl1_Paint(sender: Object; e: PaintEventArgs);
begin
  var glColor := Color.FromArgb(nRedByte, 0, 0);
  GL.ClearColor(glColor);
  GL.Clear(ClearBufferMask.ColorBufferBit or ClearBufferMask.StencilBufferBit);
  GL.ClearDepth(0);
  glControl1.SwapBuffers();
end;

end.
