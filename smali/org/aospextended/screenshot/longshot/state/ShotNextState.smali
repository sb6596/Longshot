.class public Lorg/aospextended/screenshot/longshot/state/ShotNextState;
.super Lorg/aospextended/screenshot/longshot/state/AbsShotState;
.source "ShotNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotNextState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 17
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 18
    sget v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_SHOT_NEXT:I

    packed-switch v0, :pswitch_data_0

    .line 29
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mOffset:I

    goto :goto_0

    .line 26
    :pswitch_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_4:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mOffset:I

    .line 27
    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_3:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mOffset:I

    .line 24
    goto :goto_0

    .line 20
    :pswitch_2
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_NEXT_LEVEL_2:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mOffset:I

    .line 21
    nop

    .line 32
    :goto_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->CAPTURE_NEXT_DELAY:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mCaptureDelay:I

    .line 33
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getNextState()Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 62
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method protected getTopBase()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lorg/aospextended/screenshot/longshot/util/MovePoint;->y:I

    return v0
.end method

.method public onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->getTopBase()I

    move-result v0

    iget v1, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int/2addr v0, v1

    .line 41
    .local v0, "top":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v2}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mOffset:I

    sub-int/2addr v1, v2

    .line 42
    .local v1, "bottom":I
    new-instance v2, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v2, p1, v0, v1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 43
    .local v2, "cache":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    monitor-enter v3

    .line 44
    :try_start_0
    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4, v2}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 45
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    .line 47
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->updateState()V

    .line 48
    return-void

    .line 45
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

    .line 58
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/ShotNextState;->getNextState()Lorg/aospextended/screenshot/longshot/state/LongshotState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 59
    return-void
.end method
