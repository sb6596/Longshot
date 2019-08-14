.class public Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;
.super Lorg/aospextended/screenshot/longshot/state/AbsShotState;
.source "ShotBgNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotBgNextState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 19
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_BGNEXT:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mOffset:I

    .line 20
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->CAPTURE_NEXT_DELAY:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mCaptureDelay:I

    .line 21
    return-void
.end method


# virtual methods
.method protected getNextState()Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 50
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getTopBase()I
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lorg/aospextended/screenshot/longshot/util/MovePoint;->y:I

    return v0
.end method

.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 28
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->getTopBase()I

    move-result v0

    iget v1, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mOffset:I

    sub-int/2addr v0, v1

    .line 29
    .local v0, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mOffset:I

    sub-int/2addr v1, v2

    .line 30
    .local v1, "bottom":I
    new-instance v2, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v2, p1, v0, v1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 31
    .local v2, "cache":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    monitor-enter v3

    .line 32
    :try_start_0
    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4, v2}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 33
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    .line 35
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->updateState()V

    .line 36
    return-void

    .line 33
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected updateState()V
    .locals 3

    .line 46
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;->getNextState()Lorg/aospextended/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 47
    return-void
.end method
