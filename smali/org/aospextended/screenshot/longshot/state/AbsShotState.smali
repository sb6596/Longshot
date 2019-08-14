.class public abstract Lorg/aospextended/screenshot/longshot/state/AbsShotState;
.super Lorg/aospextended/screenshot/longshot/state/AbsViewState;
.source "AbsShotState.java"

# interfaces
.implements Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.AbsShotState"


# instance fields
.field protected mCaptureDelay:I

.field protected mCaptureRunnable:Ljava/lang/Runnable;

.field protected mCaptureTask:Lorg/aospextended/screenshot/longshot/task/CaptureTask;

.field protected mEffectDelay:I

.field protected mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

.field protected mHandler:Landroid/os/Handler;

.field protected mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

.field protected mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

.field protected mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

.field protected mOffset:I

.field protected mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 50
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mOffset:I

    .line 27
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 28
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 30
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 31
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    .line 32
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    .line 33
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 34
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lorg/aospextended/screenshot/longshot/task/CaptureTask;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/longshot/state/AbsShotState$1;-><init>(Lorg/aospextended/screenshot/longshot/state/AbsShotState;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p2, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 52
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getFirstCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 53
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getImageCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 54
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getJoinCache()Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    .line 55
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getRunnableCache()Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    .line 56
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->EFFECT_DELAY:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    .line 57
    return-void
.end method


# virtual methods
.method public enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p1, "oldState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 64
    invoke-super {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;->enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 66
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->onEnter()V

    .line 67
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->startCapture()V

    .line 68
    return-void
.end method

.method public exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V
    .locals 2
    .param p1, "newState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 72
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lorg/aospextended/screenshot/longshot/task/CaptureTask;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lorg/aospextended/screenshot/longshot/task/CaptureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->cancel(Z)Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureTask:Lorg/aospextended/screenshot/longshot/task/CaptureTask;

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;->exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V

    .line 77
    return-void
.end method

.method protected firstToCache()V
    .locals 6

    .line 117
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 121
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    move-object v0, v2

    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    if-eqz v0, :cond_3

    .line 125
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v1, v2

    .line 126
    .local v1, "top":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getStart()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mOffset:I

    sub-int/2addr v2, v3

    .line 128
    .local v2, "bottom":I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 129
    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 131
    :cond_2
    new-instance v3, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v3, v0, v1, v2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 132
    .local v3, "cache":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    monitor-enter v4

    .line 133
    :try_start_1
    iget-object v5, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v5, v3}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 134
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 136
    .end local v1    # "top":I
    .end local v2    # "bottom":I
    .end local v3    # "cache":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    :cond_3
    :goto_0
    return-void

    .line 123
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 5
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 81
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_SHOT_EFFECT:Lorg/aospextended/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "border":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    new-instance v2, Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;

    invoke-direct {v2, p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;-><init>(Lorg/aospextended/screenshot/longshot/state/AbsShotState;Landroid/widget/FrameLayout;)V

    iget v3, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mEffectDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/cache/RunnableCache;->postDelayed(Ljava/lang/Runnable;J)V

    .line 86
    .end local v0    # "border":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 90
    return-void
.end method

.method protected onCaptureError()V
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MAIN:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 144
    return-void
.end method

.method public onCaptureFinished(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 94
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    const v1, 0x7f0c000e

    const v2, 0x7f030003

    invoke-interface {v0, v1, v2, p0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->show(IILorg/aospextended/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->onCaptureSuccess(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->onCaptureError()V

    .line 100
    :goto_0
    return-void
.end method

.method protected onCaptureSuccess(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 139
    invoke-virtual {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    return-void
.end method

.method protected onEnter()V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 113
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->firstToCache()V

    .line 114
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    return-void
.end method

.method protected startCapture()V
    .locals 2

    .line 106
    const-string v0, "Longshot.AbsShotState"

    const-string v1, "startCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mCaptureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "movenext"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 168
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 169
    return-void
.end method
