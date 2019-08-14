.class Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;
.super Ljava/lang/Object;
.source "AbsShotState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/state/AbsShotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/longshot/state/AbsShotState;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    .line 36
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 39
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/task/CaptureTask;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    iget-object v3, v3, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    iget-object v4, v4, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    .line 40
    invoke-interface {v4}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/task/CaptureTask;-><init>(Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    iput-object v1, v0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lorg/aospextended/screenshot/longshot/task/CaptureTask;

    .line 42
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    iget-object v0, v0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lorg/aospextended/screenshot/longshot/task/CaptureTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    iget v2, v2, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    return-void
.end method
