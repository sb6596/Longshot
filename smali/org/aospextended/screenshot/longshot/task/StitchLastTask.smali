.class public Lorg/aospextended/screenshot/longshot/task/StitchLastTask;
.super Lorg/aospextended/screenshot/longshot/task/JoinTask;
.source "StitchLastTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastTask"


# instance fields
.field protected mDispH:I


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V
    .locals 6
    .param p1, "listener"    # Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;
    .param p2, "joinCache"    # Lorg/aospextended/screenshot/longshot/cache/JoinCache;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .param p5, "dispH"    # I

    .line 29
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/aospextended/screenshot/longshot/task/JoinTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;IZ)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mDispH:I

    .line 30
    iput p5, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mDispH:I

    .line 31
    return-void
.end method

.method private lessThanScreenHeight(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/match/MatchData;)Z
    .locals 6
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p3, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;

    .line 117
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->FULLSCREEN_IMAGE:Lorg/aospextended/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "hLast":I
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v3}, Lorg/aospextended/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v3

    sub-int v0, v2, v3

    .line 121
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    .local v2, "lastTop":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 126
    .end local v2    # "lastTop":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x0

    .line 127
    .local v2, "hCurr":I
    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 129
    .local v3, "hCurrMain":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 130
    .local v4, "hCurrLast":I
    invoke-virtual {p3}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getCurrRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v5

    invoke-virtual {v5}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v5

    .line 131
    .local v5, "yCurr":I
    if-lt v5, v3, :cond_1

    .line 132
    sub-int/2addr v5, v3

    .line 133
    sub-int v2, v4, v5

    goto :goto_0

    .line 135
    :cond_1
    sub-int v2, v3, v5

    .line 136
    add-int/2addr v2, v4

    .line 139
    .end local v3    # "hCurrMain":I
    .end local v4    # "hCurrLast":I
    .end local v5    # "yCurr":I
    :cond_2
    :goto_0
    add-int v3, v0, v2

    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v4}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->getImageHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mDispH:I

    if-gt v3, v4, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    return v1

    .line 141
    .end local v0    # "hLast":I
    .end local v2    # "hCurr":I
    :cond_4
    return v1
.end method


# virtual methods
.method protected createMatcher(Landroid/content/Context;I)Lorg/aospextended/screenshot/longshot/match/Matcher;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 38
    new-instance v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;

    invoke-direct {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onJoin(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Z
    .locals 5
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 43
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->checkMatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "Longshot.StitchLastTask"

    const-string v2, "onJoin fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v1

    .line 47
    :cond_0
    const-string v0, "StitchLastTask.match"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/Matcher;->run(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Lorg/aospextended/screenshot/longshot/match/MatchData;

    move-result-object v0

    .line 49
    .local v0, "data":Lorg/aospextended/screenshot/longshot/match/MatchData;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 50
    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getMatched()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 52
    .local v1, "result":Z
    :cond_1
    if-eqz v1, :cond_3

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->lessThanScreenHeight(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/match/MatchData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 55
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v2, p2}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0, v0, p1}, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->stitchForLast(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V

    .line 58
    invoke-virtual {p0, v0, p2}, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->stitchForCurr(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V

    .line 61
    :cond_3
    :goto_0
    const-string v2, "Longshot.StitchLastTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onJoin result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v1
.end method

.method protected stitchForCurr(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V
    .locals 9
    .param p1, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 87
    const-string v0, "StitchLastTask.stitchForCurr"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 89
    .local v0, "width":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 90
    .local v1, "hCurrMain":I
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 91
    .local v2, "hCurrLast":I
    :goto_0
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getCurrRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v4

    invoke-virtual {v4}, Lorg/aospextended/screenshot/longshot/match/MatchRange;->getEnd()I

    move-result v4

    .line 92
    .local v4, "yCurr":I
    const/4 v5, 0x0

    if-lt v4, v1, :cond_2

    .line 93
    sub-int/2addr v4, v1

    .line 94
    sub-int v6, v2, v4

    if-lez v6, :cond_3

    .line 95
    const-string v6, "StitchLastTask.stitchForCurr.createbmpResult"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v7, v2, v4

    invoke-static {v6, v3, v4, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 97
    .local v3, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 98
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v6

    if-ne v6, v3, :cond_1

    .line 99
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    .line 101
    :cond_1
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v7, v3, v5, v5}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 102
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 104
    :cond_2
    const-string v6, "StitchLastTask.stitchForCurr.createbmpResult"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v7, v1, v4

    invoke-static {v6, v3, v4, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 106
    .restart local v3    # "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 107
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v7, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeBottom()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v3, v5, v8}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 109
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 110
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 111
    return-void
.end method

.method protected stitchForLast(Lorg/aospextended/screenshot/longshot/match/MatchData;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)V
    .locals 8
    .param p1, "data"    # Lorg/aospextended/screenshot/longshot/match/MatchData;
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 69
    const-string v0, "StitchLastTask.stitchForLast"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 71
    .local v0, "width":I
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/match/MatchData;->getLastRange()Lorg/aospextended/screenshot/longshot/match/MatchRange;

    move-result-object v1

    .line 72
    .local v1, "rangeLast":Lorg/aospextended/screenshot/longshot/match/MatchRange;
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mMatcher:Lorg/aospextended/screenshot/longshot/match/Matcher;

    invoke-interface {v3}, Lorg/aospextended/screenshot/longshot/match/Matcher;->getOffsetLast()I

    move-result v3

    sub-int/2addr v2, v3

    .line 73
    .local v2, "hLast":I
    if-lez v2, :cond_1

    .line 74
    const-string v3, "StitchLastTask.stitchForLast.createbmpResult"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v4, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 76
    .local v3, "bmpResult":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 77
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-ne v4, v3, :cond_0

    .line 78
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeBitmap()Landroid/graphics/Bitmap;

    .line 80
    :cond_0
    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    new-instance v5, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->removeTop()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v3, v6, v7}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->addLast(Ljava/lang/Object;)V

    .line 82
    .end local v3    # "bmpResult":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->recycle()V

    .line 83
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    return-void
.end method
