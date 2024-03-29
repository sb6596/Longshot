.class public Lorg/aospextended/screenshot/ScreenshotApplication;
.super Landroid/app/Application;
.source "ScreenshotApplication.java"

# interfaces
.implements Lorg/aospextended/screenshot/util/Cachable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/aospextended/screenshot/ScreenshotApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/aospextended/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 50
    sget-object v0, Lorg/aospextended/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    const-string v1, "clearCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lorg/aospextended/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    return-void
.end method

.method public getCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/aospextended/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 22
    sget-object v0, Lorg/aospextended/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lorg/aospextended/screenshot/util/CrashHandler;->getInstance()Lorg/aospextended/screenshot/util/CrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/aospextended/screenshot/util/CrashHandler;->init(Landroid/content/Context;)V

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 30
    sget-object v0, Lorg/aospextended/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {}, Lorg/aospextended/screenshot/util/CrashHandler;->recycle()V

    .line 33
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 34
    return-void
.end method

.method public setCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    sget-object v0, Lorg/aospextended/screenshot/ScreenshotApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCache , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lorg/aospextended/screenshot/ScreenshotApplication;->clearCache()V

    .line 45
    iget-object v0, p0, Lorg/aospextended/screenshot/ScreenshotApplication;->mCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    return-void
.end method
