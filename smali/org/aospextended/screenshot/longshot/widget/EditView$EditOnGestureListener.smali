.class public Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;
.super Lorg/aospextended/screenshot/longshot/widget/ImageView$ImageOnGestureListener;
.source "EditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/widget/EditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;


# direct methods
.method protected constructor <init>(Lorg/aospextended/screenshot/longshot/widget/EditView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/longshot/widget/EditView;

    .line 128
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/widget/ImageView$ImageOnGestureListener;-><init>(Lorg/aospextended/screenshot/longshot/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected getTouchMode(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 155
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lorg/aospextended/screenshot/longshot/widget/EditView;->access$300(Lorg/aospextended/screenshot/longshot/widget/EditView;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x3

    return v0

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->getTouchMode(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 147
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    iget v0, v0, Lorg/aospextended/screenshot/longshot/widget/EditView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/aospextended/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 132
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    iget v0, v0, Lorg/aospextended/screenshot/longshot/widget/EditView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/widget/EditView;->access$000(Lorg/aospextended/screenshot/longshot/widget/EditView;)Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 135
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    const/4 v2, -0x1

    float-to-int v3, p4

    mul-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/aospextended/screenshot/longshot/widget/EditView;->access$100(Lorg/aospextended/screenshot/longshot/widget/EditView;I)V

    .line 136
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    iget-boolean v0, v0, Lorg/aospextended/screenshot/longshot/widget/EditView;->mIsFirstScroll:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/aospextended/screenshot/longshot/widget/EditView;->mIsFirstScroll:Z

    .line 138
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/widget/EditView$EditOnGestureListener;->this$0:Lorg/aospextended/screenshot/longshot/widget/EditView;

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/widget/EditView;->access$200(Lorg/aospextended/screenshot/longshot/widget/EditView;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    invoke-static {v0, v2}, Lorg/aospextended/screenshot/statistics/EventStatistics;->addAction(Landroid/content/Context;Lorg/aospextended/screenshot/statistics/EventStatistics$Action;)V

    .line 140
    :cond_0
    return v1

    .line 142
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/aospextended/screenshot/longshot/widget/ImageView$ImageOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
