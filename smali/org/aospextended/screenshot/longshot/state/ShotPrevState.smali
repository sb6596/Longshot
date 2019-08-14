.class public Lorg/aospextended/screenshot/longshot/state/ShotPrevState;
.super Lorg/aospextended/screenshot/longshot/state/AbsShotState;
.source "ShotPrevState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotPrevState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 25
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotPrevState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_UNDO:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 26
    .local v0, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/ShotPrevState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    sget-object v2, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_UNDO:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v2}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v2

    sub-int/2addr v1, v2

    .line 27
    .local v1, "bottom":I
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/ShotPrevState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/ShotPrevState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->removeLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 29
    .local v3, "cache":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 30
    new-instance v4, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v4, p1, v0, v1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    move-object v3, v4

    .line 31
    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/state/ShotPrevState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4, v3}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 32
    .end local v3    # "cache":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    .line 34
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/ShotPrevState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    sget-object v3, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNDO:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 35
    return-void

    .line 32
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
