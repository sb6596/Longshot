.class Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;
.super Ljava/lang/Object;
.source "ImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/widget/ImageView;)V
    .locals 1

    .line 276
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;
    .param p1, "x1"    # Z

    .line 265
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method private endFling(Z)V
    .locals 2
    .param p1, "toSlots"    # Z

    .line 317
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->access$500(Lorg/aospextended/screenshot/longshot/widget/ImageView;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    const/4 v1, 0x0

    iput v1, v0, Lorg/aospextended/screenshot/longshot/widget/ImageView;->mTouchMode:I

    .line 323
    return-void
.end method

.method private startCommon()V
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 328
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 329
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 330
    .local v1, "more":Z
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 334
    .local v2, "y":I
    iget v3, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    sub-int/2addr v3, v2

    .line 336
    .local v3, "delta":I
    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-static {v4, v3}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->access$300(Lorg/aospextended/screenshot/longshot/widget/ImageView;I)V

    .line 338
    if-eqz v1, :cond_0

    .line 339
    iput v2, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 340
    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-virtual {v4, p0}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 342
    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    .line 344
    :goto_0
    return-void
.end method

.method public startUsingDistance(I)V
    .locals 7
    .param p1, "distance"    # I

    .line 298
    if-nez p1, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 303
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-int v5, p1

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->access$400(Lorg/aospextended/screenshot/longshot/widget/ImageView;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 304
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10
    .param p1, "initialVelocity"    # I

    .line 286
    if-nez p1, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->startCommon()V

    .line 290
    if-gez p1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 291
    .local v0, "initialY":I
    :goto_0
    iput v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mLastFlingY:I

    .line 292
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v3, v0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 294
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-virtual {v1, p0}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "toSlots"    # Z

    .line 308
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->this$0:Lorg/aospextended/screenshot/longshot/widget/ImageView;

    invoke-virtual {v0, p0}, Lorg/aospextended/screenshot/longshot/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/widget/ImageView$FlingRunnable;->endFling(Z)V

    .line 310
    return-void
.end method
