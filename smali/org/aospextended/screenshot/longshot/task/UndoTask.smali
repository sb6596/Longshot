.class public Lorg/aospextended/screenshot/longshot/task/UndoTask;
.super Lorg/aospextended/screenshot/longshot/task/JoinTask;
.source "UndoTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoTask"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 6
    .param p1, "listener"    # Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lorg/aospextended/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 22
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/aospextended/screenshot/longshot/task/JoinTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 23
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lorg/aospextended/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 30
    new-instance v0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;

    invoke-direct {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onFailed(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V
    .locals 1
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 58
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 59
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/UndoTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0, p2}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method protected onJoin(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Z
    .locals 10
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 35
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/UndoTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/Matcher;->run(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Lorg/aospextended/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 36
    .local v0, "data":Lorg/aospextended/screenshot/longshot/match/MatchData;
    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 37
    .local v1, "result":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 39
    .local v3, "width":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 40
    .local v4, "height":I
    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getCurrRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v5

    invoke-virtual {v5}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getStart()I

    move-result v5

    .line 41
    .local v5, "yCurr":I
    sub-int v6, v4, v5

    if-lez v6, :cond_2

    .line 42
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v7, v4, v5

    invoke-static {v6, v2, v5, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    .local v2, "bmpCurr":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v6, v2, :cond_1

    .line 44
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 46
    :cond_1
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/task/UndoTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v2, v8, v9}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 48
    .end local v2    # "bmpCurr":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 49
    :cond_2
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/UndoTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2, p2}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 51
    :goto_1
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 53
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "yCurr":I
    :cond_3
    return v1
.end method
