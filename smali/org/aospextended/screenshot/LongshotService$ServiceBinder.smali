.class Lorg/aospextended/screenshot/LongshotService$ServiceBinder;
.super Lcom/android/internal/custom/longshot/LongScreenshotService;
.source "LongshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/LongshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/aospextended/screenshot/LongshotService;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/LongshotService;Landroid/content/Context;ZZ)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .line 77
    iput-object p1, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    .line 78
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/custom/longshot/LongScreenshotService;-><init>(Landroid/content/Context;ZZ)V

    .line 79
    iput-object p2, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method


# virtual methods
.method public isHandleState()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->isHandleState()Z

    move-result v0

    return v0
.end method

.method public isMoveState()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v0

    return v0
.end method

.method public notifyScroll(Z)V
    .locals 2
    .param p1, "isOverScroll"    # Z

    .line 96
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 97
    iget-object v1, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v1}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->setOverScroll(Z)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v1}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->setScroll(Z)V

    .line 101
    :goto_0
    return-void
.end method

.method public notifyScrollViewTop(I)V
    .locals 1
    .param p1, "viewTop"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0, p1}, Lorg/aospextended/screenshot/LongshotService;->access$202(Lorg/aospextended/screenshot/LongshotService;I)I

    .line 121
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->setScrollViewTop(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public onUnscrollableView()V
    .locals 2

    .line 128
    invoke-static {}, Lorg/aospextended/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnscrollableView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->onUnscrollableView()V

    .line 132
    :cond_0
    return-void
.end method

.method public start(Lcom/android/internal/custom/longshot/ILongScreenshotCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/custom/longshot/ILongScreenshotCallback;

    .line 84
    invoke-static {}, Lorg/aospextended/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lorg/aospextended/screenshot/LongshotService$Finisher;

    iget-object v1, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-direct {v0, v1, p1}, Lorg/aospextended/screenshot/LongshotService$Finisher;-><init>(Lorg/aospextended/screenshot/LongshotService;Lcom/android/internal/custom/longshot/ILongScreenshotCallback;)V

    .line 87
    .local v0, "finisher":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v1}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v1

    iget-boolean v2, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->mStatusBarVisible:Z

    iget-boolean v3, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->mNavBarVisible:Z

    invoke-virtual {v1, v0, p1, v2, v3}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->start(Ljava/lang/Runnable;Lcom/android/internal/custom/longshot/ILongScreenshotCallback;ZZ)V

    .line 88
    return-void
.end method

.method public stopLongshot()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-static {v0}, Lorg/aospextended/screenshot/LongshotService;->access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->stop()V

    .line 116
    return-void
.end method
