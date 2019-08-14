.class public Lorg/aospextended/screenshot/service/GlobalSave;
.super Ljava/lang/Object;
.source "GlobalSave.java"

# interfaces
.implements Lorg/aospextended/screenshot/service/SaveTask$OnSaveListener;


# static fields
.field private static final NOTIFICATION_ID_REPEAT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCachable:Lorg/aospextended/screenshot/util/Cachable;

.field private mContext:Landroid/content/Context;

.field private mNotificationId:I

.field private mSaveTask:Lorg/aospextended/screenshot/service/SaveTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/aospextended/screenshot/service/GlobalSave;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/aospextended/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/aospextended/screenshot/service/GlobalSave;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    .line 28
    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mCachable:Lorg/aospextended/screenshot/util/Cachable;

    .line 29
    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mSaveTask:Lorg/aospextended/screenshot/service/SaveTask;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mNotificationId:I

    .line 37
    iput-object p1, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    .line 39
    iget-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/aospextended/screenshot/ScreenshotApplication;

    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mCachable:Lorg/aospextended/screenshot/util/Cachable;

    .line 40
    return-void
.end method

.method private nextNotificationId()I
    .locals 1

    .line 88
    iget v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private onFinished()V
    .locals 3

    .line 77
    sget-object v0, Lorg/aospextended/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mSaveTask:Lorg/aospextended/screenshot/service/SaveTask;

    .line 80
    sget-object v1, Lorg/aospextended/screenshot/service/GlobalSave;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mCachable:Lorg/aospextended/screenshot/util/Cachable;

    invoke-interface {v2}, Lorg/aospextended/screenshot/util/Cachable;->clearCache()V

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mCachable:Lorg/aospextended/screenshot/util/Cachable;

    .line 84
    invoke-static {}, Lorg/aospextended/screenshot/service/GlobalNotification;->recycle()V

    .line 85
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onSaveCancelled()V
    .locals 2

    .line 70
    sget-object v0, Lorg/aospextended/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0}, Lorg/aospextended/screenshot/service/GlobalSave;->onFinished()V

    .line 72
    return-void
.end method

.method public onSaveFinished()V
    .locals 2

    .line 64
    sget-object v0, Lorg/aospextended/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lorg/aospextended/screenshot/service/GlobalSave;->onFinished()V

    .line 66
    return-void
.end method

.method public start()V
    .locals 5

    .line 46
    sget-object v0, Lorg/aospextended/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lorg/aospextended/screenshot/service/GlobalSave;->nextNotificationId()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mNotificationId:I

    .line 48
    iget-object v0, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/aospextended/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 49
    sput-boolean v3, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    sget-object v1, Lorg/aospextended/screenshot/service/GlobalSave;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v2, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mCachable:Lorg/aospextended/screenshot/util/Cachable;

    invoke-interface {v2}, Lorg/aospextended/screenshot/util/Cachable;->getCache()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    new-instance v1, Lorg/aospextended/screenshot/service/SaveTask;

    iget-object v2, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iget v4, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mNotificationId:I

    invoke-direct {v1, p0, v2, v0, v4}, Lorg/aospextended/screenshot/service/SaveTask;-><init>(Lorg/aospextended/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mSaveTask:Lorg/aospextended/screenshot/service/SaveTask;

    .line 56
    iget-object v1, p0, Lorg/aospextended/screenshot/service/GlobalSave;->mSaveTask:Lorg/aospextended/screenshot/service/SaveTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/aospextended/screenshot/service/SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 57
    return-void

    .line 54
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
