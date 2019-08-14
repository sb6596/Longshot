.class public Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;
.super Lorg/aospextended/screenshot/longshot/task/JoinTask;
.source "StitchBgNextTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextTask"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 6
    .param p1, "listener"    # Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lorg/aospextended/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 21
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/aospextended/screenshot/longshot/task/JoinTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 22
    return-void
.end method

.method private stitchForCurr(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V
    .locals 10
    .param p1, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 63
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 64
    .local v0, "rate":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 65
    .local v1, "offset":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 66
    .local v2, "width":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getCurrRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v3

    mul-int/2addr v3, v0

    .line 67
    .local v3, "yCurr":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    .line 68
    .local v4, "hCurr":I
    if-lez v4, :cond_0

    .line 69
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 70
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 72
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 73
    return-void
.end method

.method private stitchForLast(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V
    .locals 10
    .param p1, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 50
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 51
    .local v0, "rate":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 52
    .local v1, "offset":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 53
    .local v2, "width":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getLastRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v3

    .line 54
    .local v3, "rangeLast":Lorg/aospextended/screenshot/longshot/match/MatchRange;
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getLines()[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v5

    array-length v5, v5

    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 55
    .local v4, "hLast":I
    if-lez v4, :cond_0

    .line 56
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v6, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 57
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v5, v8, v9}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 59
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 60
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lorg/aospextended/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 29
    new-instance v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;

    invoke-direct {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Z
    .locals 3
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 34
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;->checkMatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 35
    return v1

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/Matcher;->run(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Lorg/aospextended/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 38
    .local v0, "data":Lorg/aospextended/screenshot/longshot/match/MatchData;
    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 39
    .local v1, "result":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 40
    invoke-direct {p0, v0, p1}, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;->stitchForLast(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V

    .line 41
    invoke-direct {p0, v0, p2}, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;->stitchForCurr(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V

    .line 43
    :cond_2
    return v1
.end method
