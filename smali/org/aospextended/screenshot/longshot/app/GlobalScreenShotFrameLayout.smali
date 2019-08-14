.class public Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;
.super Landroid/widget/FrameLayout;
.source "GlobalScreenShotFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalFrameLayout"


# instance fields
.field private mKeyCallback:Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 26
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;->mKeyCallback:Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;->mKeyCallback:Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-virtual {v0, p1}, Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 29
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public registerKeyEventCallBack(Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;)V
    .locals 3
    .param p1, "callback"    # Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;

    .line 33
    const-string v0, "Longshot.GlobalFrameLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerKeyEventCallBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;->mKeyCallback:Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;

    .line 35
    return-void
.end method

.method public unregisterKeyEventCallBack()V
    .locals 2

    .line 38
    const-string v0, "Longshot.GlobalFrameLayout"

    const-string v1, "unregisterKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;->mKeyCallback:Lorg/aospextended/screenshot/GlobalScreenshot$KeyEventCallBack;

    .line 40
    return-void
.end method
