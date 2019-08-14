.class Lorg/aospextended/screenshot/longshot/util/Configs$1;
.super Ljava/lang/Object;
.source "Configs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/util/Configs$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 706
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/util/Configs$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    .line 707
    .local v0, "lsm":Lorg/aospextended/screenshot/longshot/state/LongshotMode;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 708
    const-string v1, "Longshot.Configs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sput-boolean v2, Lorg/aospextended/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .line 710
    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->isMoveState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->onTouch()V

    .line 714
    :cond_0
    return v2
.end method
