.class public Lorg/aospextended/screenshot/longshot/task/StitchOneTask;
.super Lorg/aospextended/screenshot/longshot/task/StitchOverTask;
.source "StitchOneTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOneTask"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 0
    .param p1, "listener"    # Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lorg/aospextended/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/aospextended/screenshot/longshot/task/StitchOverTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lorg/aospextended/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onJoin(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Z
    .locals 1
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 30
    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchOneTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0, p2}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x1

    return v0
.end method
