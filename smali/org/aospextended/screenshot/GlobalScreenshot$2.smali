.class Lorg/aospextended/screenshot/GlobalScreenshot$2;
.super Landroid/os/Handler;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 928
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$2;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 931
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$2;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$200(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 932
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$2;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$300(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 933
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$2;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$400(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 935
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$2;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$100(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    sget-boolean v2, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 937
    return-void
.end method
