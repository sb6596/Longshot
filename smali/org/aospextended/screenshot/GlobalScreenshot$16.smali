.class Lorg/aospextended/screenshot/GlobalScreenshot$16;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

.field final synthetic val$finalPos:Landroid/graphics/PointF;

.field final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 1573
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->val$finalPos:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1576
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1577
    .local v0, "t":F
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2300(Lorg/aospextended/screenshot/GlobalScreenshot;)F

    move-result v1

    const v2, 0x3f39999a    # 0.725f

    add-float/2addr v2, v1

    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    .line 1578
    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    const v3, 0x3e8cccce    # 0.27500004f

    mul-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 1580
    .local v2, "scaleT":F
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2200(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v0

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1581
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1582
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1583
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1584
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1585
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$16;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1586
    return-void
.end method
