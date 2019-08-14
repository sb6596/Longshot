.class public abstract Lorg/aospextended/screenshot/longshot/state/AbsImageState;
.super Lorg/aospextended/screenshot/longshot/state/AbsViewState;
.source "AbsImageState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsImageState"


# instance fields
.field protected mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

.field protected mImageView:Lorg/aospextended/screenshot/longshot/widget/ImageView;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    .line 23
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 17
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mImageView:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    .line 24
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getImageCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 25
    return-void
.end method


# virtual methods
.method public enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 0
    .param p1, "oldState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 32
    invoke-super {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;->enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 34
    return-void
.end method

.method public exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V
    .locals 1
    .param p1, "newState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 38
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;->clear()V

    .line 39
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsViewState;->exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V

    .line 40
    return-void
.end method

.method protected initViews(Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "content"    # Landroid/widget/FrameLayout;

    .line 44
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    const v0, 0x7f0b002b

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/aospextended/screenshot/longshot/widget/ImageView;

    .line 46
    .local v0, "imageView":Lorg/aospextended/screenshot/longshot/widget/ImageView;
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getNavBarHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->setNavBarHeight(I)V

    .line 47
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/AbsImageState;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->setBitmaps(Ljava/util/List;)V

    .line 49
    .end local v0    # "imageView":Lorg/aospextended/screenshot/longshot/widget/ImageView;
    :cond_0
    return-void
.end method
