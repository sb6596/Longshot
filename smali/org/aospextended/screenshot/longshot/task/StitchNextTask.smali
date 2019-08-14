.class public Lorg/aospextended/screenshot/longshot/task/StitchNextTask;
.super Lorg/aospextended/screenshot/longshot/task/JoinTask;
.source "StitchNextTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchNextTask"


# instance fields
.field private mMatchedSize:I


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V
    .locals 6
    .param p1, "listener"    # Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lorg/aospextended/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I

    .line 25
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/aospextended/screenshot/longshot/task/JoinTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    .line 26
    sget v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_STITCH_MATCH:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 33
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STITCH_NEXT_MATCH_LEVEL_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STITCH_NEXT_MATCH_LEVEL_2:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    .line 29
    nop

    .line 36
    :goto_0
    const-string v0, "Longshot.StitchNextTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEVEL_STITCH_MATCH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_STITCH_MATCH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMatchedSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method private isLegalPosition(Lorg/aospextended/screenshot/longshot/match/MatchData;)Z
    .locals 3
    .param p1, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;

    .line 68
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getLastRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v0

    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getLastRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getLines()[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getCurrRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getStart()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 68
    :goto_0
    return v2
.end method

.method private stitchForCurr(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V
    .locals 10
    .param p1, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 91
    const-string v0, "StitchNextTask.stitchForCurr"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 93
    .local v0, "rate":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 94
    .local v1, "offset":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 95
    .local v2, "width":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getCurrRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v3

    mul-int/2addr v3, v0

    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v4}, Lorg/aospextended/screenshot/longshot/match/Matcher;->getOffsetCurr()I

    move-result v4

    add-int/2addr v3, v4

    .line 96
    .local v3, "yCurr":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    .line 97
    .local v4, "hCurr":I
    if-lez v4, :cond_0

    .line 98
    const-string v5, "StitchNextTask.stitchForCurr.createbmpResult"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 100
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 101
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    const/4 v8, 0x0

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 103
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 104
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 105
    return-void
.end method

.method private stitchForLast(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V
    .locals 10
    .param p1, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 73
    const-string v0, "StitchNextTask.stitchForLast"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getRate()I

    move-result v0

    .line 75
    .local v0, "rate":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getOffset()I

    move-result v1

    .line 76
    .local v1, "offset":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 77
    .local v2, "width":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getLastRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v3

    .line 78
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

    .line 79
    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v5}, Lorg/aospextended/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v5

    sub-int/2addr v4, v5

    .line 80
    .local v4, "hLast":I
    if-lez v4, :cond_0

    .line 81
    const-string v5, "StitchNextTask.stitchForLast.createbmpResult"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v6, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 83
    .local v5, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v5, v8, v9}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 86
    .end local v5    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    return-void
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lorg/aospextended/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 44
    new-instance v0, Lorg/aospextended/screenshot/longshot/match/StitchNextMatcher;

    invoke-direct {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/StitchNextMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Z
    .locals 4
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 49
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->checkMatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "Longshot.StitchNextTask"

    const-string v2, "check matcher fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v1

    .line 53
    :cond_0
    const-string v0, "StitchNextTask.MatchData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/Matcher;->run(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Lorg/aospextended/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 55
    .local v0, "data":Lorg/aospextended/screenshot/longshot/match/MatchData;
    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    iget v3, p0, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->mMatchedSize:I

    if-le v2, v3, :cond_1

    invoke-direct {p0, v0}, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->isLegalPosition(Lorg/aospextended/screenshot/longshot/match/MatchData;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 56
    .local v1, "result":Z
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    if-eqz v1, :cond_2

    .line 58
    invoke-direct {p0, v0, p1}, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->stitchForLast(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V

    .line 59
    invoke-direct {p0, v0, p2}, Lorg/aospextended/screenshot/longshot/task/StitchNextTask;->stitchForCurr(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V

    .line 61
    :cond_2
    return v1
.end method
