.class Lorg/aospextended/screenshot/GlobalScreenshot$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 1464
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1486
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2400(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1488
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v0, :cond_0

    .line 1489
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2500(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1492
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1467
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2200(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1468
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2200(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1470
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1471
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1472
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2300(Lorg/aospextended/screenshot/GlobalScreenshot;)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1473
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2300(Lorg/aospextended/screenshot/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1474
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2400(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1476
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2400(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1479
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$11;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2500(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1483
    :cond_0
    return-void
.end method
