.class Lorg/aospextended/screenshot/GlobalScreenshot$3$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/aospextended/screenshot/GlobalScreenshot$3;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot$3;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$1"    # Lorg/aospextended/screenshot/GlobalScreenshot$3;

    .line 1132
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;->this$1:Lorg/aospextended/screenshot/GlobalScreenshot$3;

    iput-object p2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1134
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;->this$1:Lorg/aospextended/screenshot/GlobalScreenshot$3;

    iget-object v0, v0, Lorg/aospextended/screenshot/GlobalScreenshot$3;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;->this$1:Lorg/aospextended/screenshot/GlobalScreenshot$3;

    iget-object v1, v1, Lorg/aospextended/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;->this$1:Lorg/aospextended/screenshot/GlobalScreenshot$3;

    iget-boolean v2, v2, Lorg/aospextended/screenshot/GlobalScreenshot$3;->val$statusBarVisible:Z

    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;->this$1:Lorg/aospextended/screenshot/GlobalScreenshot$3;

    iget-boolean v3, v3, Lorg/aospextended/screenshot/GlobalScreenshot$3;->val$navBarVisible:Z

    iget-object v4, p0, Lorg/aospextended/screenshot/GlobalScreenshot$3$1;->val$rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/aospextended/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V

    .line 1136
    return-void
.end method
