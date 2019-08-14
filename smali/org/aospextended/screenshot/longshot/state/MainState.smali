.class public Lorg/aospextended/screenshot/longshot/state/MainState;
.super Lorg/aospextended/screenshot/longshot/state/AbsViewState;
.source "MainState.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MainState"


# instance fields
.field protected mEnterRunnable:Ljava/lang/Runnable;

.field protected mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

.field protected mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

.field protected mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

.field private mNextListener:Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

.field private mSaveListener:Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

.field protected mSharedPrefs:Lorg/aospextended/screenshot/util/SharedPrefs;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    .line 102
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 22
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 23
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    .line 24
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mSharedPrefs:Lorg/aospextended/screenshot/util/SharedPrefs;

    .line 26
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/MainState$1;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/longshot/state/MainState$1;-><init>(Lorg/aospextended/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mNextListener:Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 33
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/MainState$2;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/longshot/state/MainState$2;-><init>(Lorg/aospextended/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mSaveListener:Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 42
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/MainState$3;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/longshot/state/MainState$3;-><init>(Lorg/aospextended/screenshot/longshot/state/MainState;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    .line 103
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getFirstCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 104
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getImageCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 105
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getJoinCache()Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    .line 106
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getSharedPrefs()Lorg/aospextended/screenshot/util/SharedPrefs;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mSharedPrefs:Lorg/aospextended/screenshot/util/SharedPrefs;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lorg/aospextended/screenshot/longshot/state/MainState;)Z
    .locals 1
    .param p0, "x0"    # Lorg/aospextended/screenshot/longshot/state/MainState;

    .line 15
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/MainState;->hasNext()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/aospextended/screenshot/longshot/state/MainState;)Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;
    .locals 1
    .param p0, "x0"    # Lorg/aospextended/screenshot/longshot/state/MainState;

    .line 15
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mNextListener:Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/aospextended/screenshot/longshot/state/MainState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p0, "x0"    # Lorg/aospextended/screenshot/longshot/state/MainState;
    .param p1, "x1"    # Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 15
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/MainState;->gotToNextState(Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method static synthetic access$300(Lorg/aospextended/screenshot/longshot/state/MainState;)Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;
    .locals 1
    .param p0, "x0"    # Lorg/aospextended/screenshot/longshot/state/MainState;

    .line 15
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mSaveListener:Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    return-object v0
.end method

.method private gotToNextState(Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 71
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->setFirst(Z)V

    .line 73
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-interface {v0, v1, p1}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {p1}, Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;->updateState()V

    .line 77
    :goto_0
    return-void
.end method

.method private hasNext()Z
    .locals 3

    .line 81
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "Longshot.MainState"

    const-string v2, "touch to stop scroll"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->isLast()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->isOverScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "Longshot.MainState"

    const-string v2, "max pages"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v1

    .line 96
    :cond_2
    return v2

    .line 88
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0, v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->setLast(Z)V

    .line 89
    const-string v0, "Longshot.MainState"

    const-string v2, "last page"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1
.end method


# virtual methods
.method public enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 4
    .param p1, "oldState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 113
    invoke-super {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;->enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 115
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->isFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 122
    :cond_1
    const-string v0, "Longshot.MainState"

    const-string v1, "enter, not running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/MainState;->mEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    :goto_0
    return-void
.end method

.method protected initDecor(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 134
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 138
    return-void
.end method

.method public onShow(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .line 129
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;->onShow(Landroid/app/Dialog;)V

    .line 130
    return-void
.end method

.method protected updateButtons(Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "decor"    # Landroid/widget/FrameLayout;

    .line 145
    return-void
.end method
