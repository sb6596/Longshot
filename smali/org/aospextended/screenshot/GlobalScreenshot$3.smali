.class Lorg/aospextended/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$navBarVisible:Z

.field final synthetic val$statusBarVisible:Z


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 1114
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iput-boolean p4, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1117
    move-object v0, p1

    check-cast v0, Lorg/aospextended/screenshot/ScreenshotSelectorView;

    .line 1118
    .local v0, "view":Lorg/aospextended/screenshot/ScreenshotSelectorView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1145
    const/4 v1, 0x0

    return v1

    .line 1123
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lorg/aospextended/screenshot/ScreenshotSelectorView;->updateSelection(II)V

    .line 1124
    return v2

    .line 1126
    :pswitch_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/ScreenshotSelectorView;->setVisibility(I)V

    .line 1127
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$700(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$600(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1128
    invoke-virtual {v0}, Lorg/aospextended/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1129
    .local v1, "rect":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 1130
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$600(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v3

    new-instance v4, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;

    invoke-direct {v4, p0, v1}, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;-><init>(Lorg/aospextended/screenshot/GlobalScreenshot$3;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1141
    :cond_0
    invoke-virtual {v0}, Lorg/aospextended/screenshot/ScreenshotSelectorView;->stopSelection()V

    .line 1142
    return v2

    .line 1120
    .end local v1    # "rect":Landroid/graphics/Rect;
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Lorg/aospextended/screenshot/ScreenshotSelectorView;->startSelection(II)V

    .line 1121
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
