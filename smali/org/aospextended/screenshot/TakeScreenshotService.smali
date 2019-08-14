.class public Lorg/aospextended/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.TakeScreenshotService"

.field private static mScreenshot:Lorg/aospextended/screenshot/GlobalScreenshot;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lorg/aospextended/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/TakeScreenshotService$1;-><init>(Lorg/aospextended/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lorg/aospextended/screenshot/GlobalScreenshot;
    .locals 1

    .line 35
    sget-object v0, Lorg/aospextended/screenshot/TakeScreenshotService;->mScreenshot:Lorg/aospextended/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic access$002(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/GlobalScreenshot;
    .locals 0
    .param p0, "x0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 35
    sput-object p0, Lorg/aospextended/screenshot/TakeScreenshotService;->mScreenshot:Lorg/aospextended/screenshot/GlobalScreenshot;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 135
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lorg/aospextended/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 126
    sget-object v0, Lorg/aospextended/screenshot/TakeScreenshotService;->mScreenshot:Lorg/aospextended/screenshot/GlobalScreenshot;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lorg/aospextended/screenshot/TakeScreenshotService;->mScreenshot:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-virtual {v0, p1}, Lorg/aospextended/screenshot/GlobalScreenshot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 140
    sget-object v0, Lorg/aospextended/screenshot/TakeScreenshotService;->mScreenshot:Lorg/aospextended/screenshot/GlobalScreenshot;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/aospextended/screenshot/TakeScreenshotService;->mScreenshot:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->stopScreenshot()V

    .line 141
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
