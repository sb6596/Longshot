.class Lorg/aospextended/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/TakeScreenshotService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/TakeScreenshotService;

    .line 40
    iput-object p1, p0, Lorg/aospextended/screenshot/TakeScreenshotService$1;->this$0:Lorg/aospextended/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "focusWindow"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/aospextended/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    .line 47
    const-string v2, "longshot"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    sput-boolean v2, Lorg/aospextended/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 49
    const-string v2, "offset"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/aospextended/screenshot/longshot/util/Configs;->mHeaderOffset:I

    .line 54
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 55
    .local v0, "callback":Landroid/os/Messenger;
    new-instance v2, Lorg/aospextended/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v2, p0, v0}, Lorg/aospextended/screenshot/TakeScreenshotService$1$1;-><init>(Lorg/aospextended/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 81
    .local v2, "finisher":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/aospextended/screenshot/TakeScreenshotService$1;->this$0:Lorg/aospextended/screenshot/TakeScreenshotService;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Lorg/aospextended/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    const-string v1, "Longshot.TakeScreenshotService"

    const-string v3, "Skipping screenshot because storage is locked!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0, v2}, Lorg/aospextended/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$000()Lorg/aospextended/screenshot/GlobalScreenshot;

    move-result-object v3

    if-nez v3, :cond_2

    .line 88
    new-instance v3, Lorg/aospextended/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lorg/aospextended/screenshot/TakeScreenshotService$1;->this$0:Lorg/aospextended/screenshot/TakeScreenshotService;

    invoke-direct {v3, v4}, Lorg/aospextended/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$002(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/GlobalScreenshot;

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$000()Lorg/aospextended/screenshot/GlobalScreenshot;

    move-result-object v3

    invoke-virtual {v3}, Lorg/aospextended/screenshot/GlobalScreenshot;->updateLayout()V

    .line 96
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 97
    .local v3, "time":J
    invoke-static {}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$000()Lorg/aospextended/screenshot/GlobalScreenshot;

    sget-wide v5, Lorg/aospextended/screenshot/GlobalScreenshot;->mLastImageTime:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    .line 98
    const-string v1, "Longshot.TakeScreenshotService"

    const-string v5, "Skipping screenshot because screenshot at the same time"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, v2}, Lorg/aospextended/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void

    .line 105
    :cond_3
    const-string v5, "com.oneplus.camera"

    sget-object v6, Lorg/aospextended/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 106
    sput-boolean v1, Lorg/aospextended/screenshot/longshot/util/Configs;->mNoFooter:Z

    .line 109
    :cond_4
    const-string v5, "Longshot.TakeScreenshotService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takescreenshot for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/aospextended/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", longshot: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lorg/aospextended/screenshot/longshot/util/Configs;->mNoFooter:Z

    xor-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", offset:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lorg/aospextended/screenshot/longshot/util/Configs;->mHeaderOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    goto :goto_5

    .line 117
    :pswitch_0
    invoke-static {}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$000()Lorg/aospextended/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_5

    move v7, v1

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_6

    goto :goto_2

    :cond_6
    move v1, v6

    :goto_2
    invoke-virtual {v5, v2, v7, v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    goto :goto_5

    .line 114
    :pswitch_1
    invoke-static {}, Lorg/aospextended/screenshot/TakeScreenshotService;->access$000()Lorg/aospextended/screenshot/GlobalScreenshot;

    move-result-object v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_7

    move v7, v1

    goto :goto_3

    :cond_7
    move v7, v6

    :goto_3
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_8

    goto :goto_4

    :cond_8
    move v1, v6

    :goto_4
    invoke-virtual {v5, v2, v7, v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    .line 115
    nop

    .line 120
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
