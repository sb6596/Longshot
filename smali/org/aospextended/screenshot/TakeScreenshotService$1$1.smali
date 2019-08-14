.class Lorg/aospextended/screenshot/TakeScreenshotService$1$1;
.super Ljava/lang/Object;
.source "TakeScreenshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/TakeScreenshotService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/aospextended/screenshot/TakeScreenshotService$1;

.field final synthetic val$callback:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "this$1"    # Lorg/aospextended/screenshot/TakeScreenshotService$1;

    .line 55
    iput-object p1, p0, Lorg/aospextended/screenshot/TakeScreenshotService$1$1;->this$1:Lorg/aospextended/screenshot/TakeScreenshotService$1;

    iput-object p2, p0, Lorg/aospextended/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    const/4 v0, 0x1

    .line 60
    .local v0, "what":I
    invoke-static {}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$000()Lorg/aospextended/screenshot/GlobalScreenshot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$000()Lorg/aospextended/screenshot/GlobalScreenshot;

    move-result-object v1

    invoke-virtual {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->isGuiderShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v0, 0x2

    .line 62
    const-string v1, "Longshot.TakeScreenshotService"

    const-string v2, "send 2 back"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lorg/aospextended/screenshot/TakeScreenshotService$1$1;->this$1:Lorg/aospextended/screenshot/TakeScreenshotService$1;

    iget-object v1, v1, Lorg/aospextended/screenshot/TakeScreenshotService$1;->this$0:Lorg/aospextended/screenshot/TakeScreenshotService;

    const-string v2, "screenshot"

    const-string v3, "normal"

    sget-object v4, Lorg/aospextended/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 72
    .local v1, "reply":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lorg/aospextended/screenshot/TakeScreenshotService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 73
    :catch_0
    move-exception v2

    .line 75
    :goto_1
    return-void
.end method
