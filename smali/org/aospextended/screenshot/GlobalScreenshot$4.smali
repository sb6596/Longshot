.class Lorg/aospextended/screenshot/GlobalScreenshot$4;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
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

    .line 1148
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$4;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1151
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$4;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$800(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/ScreenshotSelectorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$4;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$800(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/ScreenshotSelectorView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/aospextended/screenshot/ScreenshotSelectorView;->requestFocus()Z

    .line 1153
    return-void
.end method
