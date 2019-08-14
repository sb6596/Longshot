.class Lorg/aospextended/screenshot/longshot/task/MoveTask$1;
.super Landroid/os/Handler;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/task/MoveTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/task/MoveTask;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/longshot/task/MoveTask;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 50
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask$1;->this$0:Lorg/aospextended/screenshot/longshot/task/MoveTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 53
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 54
    .local v0, "count":I
    invoke-static {}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask$1;->this$0:Lorg/aospextended/screenshot/longshot/task/MoveTask;

    invoke-static {v2}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->access$100(Lorg/aospextended/screenshot/longshot/task/MoveTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask$1;->this$0:Lorg/aospextended/screenshot/longshot/task/MoveTask;

    invoke-static {v2, v0}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->access$200(Lorg/aospextended/screenshot/longshot/task/MoveTask;I)V

    goto :goto_0

    .line 58
    :cond_0
    const-string v2, "Longshot.MoveTask"

    const-string v3, "cancel this check"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
