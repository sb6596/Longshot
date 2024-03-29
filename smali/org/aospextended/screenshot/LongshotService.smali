.class public Lorg/aospextended/screenshot/LongshotService;
.super Landroid/app/Service;
.source "LongshotService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/LongshotService$Finisher;,
        Lorg/aospextended/screenshot/LongshotService$ServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLongshotMode:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

.field private mTargetViewTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lorg/aospextended/screenshot/LongshotService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/aospextended/screenshot/LongshotService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/LongshotService;->mLongshotMode:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/LongshotService;->mTargetViewTop:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lorg/aospextended/screenshot/LongshotService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/aospextended/screenshot/LongshotService;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;
    .locals 1
    .param p0, "x0"    # Lorg/aospextended/screenshot/LongshotService;

    .line 23
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService;->mLongshotMode:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    return-object v0
.end method

.method static synthetic access$202(Lorg/aospextended/screenshot/LongshotService;I)I
    .locals 0
    .param p0, "x0"    # Lorg/aospextended/screenshot/LongshotService;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lorg/aospextended/screenshot/LongshotService;->mTargetViewTop:I

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    sget-object v0, Lorg/aospextended/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "statusbar_visible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 62
    .local v0, "statusBarVisible":Z
    const-string v2, "navigationbar_visible"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "navBarVisible":Z
    new-instance v2, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;

    invoke-direct {v2, p0, p0, v0, v1}, Lorg/aospextended/screenshot/LongshotService$ServiceBinder;-><init>(Lorg/aospextended/screenshot/LongshotService;Landroid/content/Context;ZZ)V

    return-object v2
.end method

.method public onCreate()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    sget-object v0, Lorg/aospextended/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getInstance(Landroid/content/Context;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/LongshotService;->mLongshotMode:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 44
    invoke-static {}, Lorg/aospextended/screenshot/longshot/util/Configs;->recycle()V

    .line 45
    invoke-static {}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->recycle()V

    .line 46
    invoke-static {}, Lorg/aospextended/screenshot/service/GlobalNotification;->recycle()V

    .line 48
    sget-object v0, Lorg/aospextended/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 53
    sget-object v0, Lorg/aospextended/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 69
    sget-object v0, Lorg/aospextended/screenshot/LongshotService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
