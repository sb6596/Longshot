.class public Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyEventCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 1805
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1807
    if-nez p1, :cond_0

    .line 1808
    return-void

    .line 1811
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1812
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$000(Lorg/aospextended/screenshot/GlobalScreenshot;)V

    .line 1814
    :cond_1
    return-void
.end method
