.class public Lorg/aospextended/screenshot/longshot/match/UndoMatcher;
.super Lorg/aospextended/screenshot/longshot/match/BaseMatcher;
.source "UndoMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UndoMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method private getCurr(ILorg/aospextended/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 15
    .param p1, "max"    # I
    .param p2, "dumper"    # Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    move-object/from16 v0, p2

    .line 89
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 90
    .local v7, "w":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 91
    .local v8, "h":I
    move/from16 v9, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 92
    .local v10, "size":I
    new-array v11, v10, [Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 93
    .local v11, "lines":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    const/4 v12, 0x0

    move v1, v12

    .local v1, "i":I
    :goto_0
    move v13, v1

    .end local v1    # "i":I
    .local v13, "i":I
    if-ge v13, v10, :cond_0

    .line 94
    new-instance v14, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v14

    move-object/from16 v2, p3

    move v4, v13

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v14, v11, v13

    .line 93
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 97
    array-length v1, v11

    invoke-virtual {v0, v11, v12, v1}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->dump([Lorg/aospextended/screenshot/longshot/bitmap/Pixels;II)V

    .line 99
    :cond_1
    return-object v11
.end method

.method private getLast(ILorg/aospextended/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 15
    .param p1, "max"    # I
    .param p2, "dumper"    # Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    move-object/from16 v0, p2

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 76
    .local v7, "w":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 77
    .local v8, "h":I
    move/from16 v9, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 78
    .local v10, "size":I
    new-array v11, v10, [Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 79
    .local v11, "lines":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    const/4 v12, 0x0

    move v1, v12

    .local v1, "i":I
    :goto_0
    move v13, v1

    .end local v1    # "i":I
    .local v13, "i":I
    if-ge v13, v10, :cond_0

    .line 80
    new-instance v14, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, v14

    move-object/from16 v2, p3

    move v4, v13

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v14, v11, v13

    .line 79
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 82
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 83
    array-length v1, v11

    invoke-virtual {v0, v11, v12, v1}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->dump([Lorg/aospextended/screenshot/longshot/bitmap/Pixels;II)V

    .line 85
    :cond_1
    return-object v11
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 41
    sget-object v0, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 6

    .line 34
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 35
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/PrevDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/aospextended/screenshot/longshot/dump/PrevDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 36
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/aospextended/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 37
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "Undo"

    return-object v0
.end method

.method public run(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Lorg/aospextended/screenshot/longshot/match/MatchData;
    .locals 16
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    move-object/from16 v0, p0

    .line 46
    invoke-virtual/range {p1 .. p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 47
    .local v1, "offset":I
    :goto_0
    sget-object v3, Lorg/aospextended/screenshot/longshot/util/Configs;->LINES_UNDO:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v3

    iget-object v4, v0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mLastDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p1 .. p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->getLast(ILorg/aospextended/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v3

    .line 48
    .local v3, "lineLast":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    invoke-virtual/range {p2 .. p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, v0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mCurrDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    invoke-virtual/range {p2 .. p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->getCurr(ILorg/aospextended/screenshot/longshot/dump/BitmapDumper;Landroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    .line 49
    .local v4, "lineCurr":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    const/4 v5, 0x0

    .line 50
    .local v5, "pos":I
    const/4 v6, 0x0

    .line 51
    .local v6, "matched":I
    const/4 v7, 0x0

    .line 52
    .local v7, "same":Z
    move v14, v7

    move v7, v2

    .local v7, "i":I
    .local v14, "same":Z
    :goto_1
    array-length v8, v4

    array-length v9, v3

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_4

    .line 53
    if-eqz v14, :cond_1

    .line 54
    array-length v2, v3

    .line 55
    .end local v6    # "matched":I
    .local v2, "matched":I
    add-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    .line 56
    .end local v5    # "pos":I
    .local v6, "pos":I
    nop

    .line 66
    move v5, v6

    goto :goto_4

    .line 58
    .end local v2    # "matched":I
    .restart local v5    # "pos":I
    .local v6, "matched":I
    :cond_1
    const/4 v8, 0x1

    .line 59
    .end local v14    # "same":Z
    .local v8, "same":Z
    move v9, v2

    .local v9, "j":I
    :goto_2
    array-length v10, v3

    if-ge v9, v10, :cond_3

    .line 60
    aget-object v10, v3, v9

    add-int v11, v9, v7

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 61
    const/4 v8, 0x0

    .line 62
    goto :goto_3

    .line 59
    :cond_2
    sget-object v10, Lorg/aospextended/screenshot/longshot/util/Configs;->STEP_UNDO:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v10}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    .line 52
    .end local v8    # "same":Z
    .end local v9    # "j":I
    .restart local v14    # "same":Z
    :cond_3
    :goto_3
    move v14, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 66
    .end local v7    # "i":I
    :cond_4
    move v2, v6

    .end local v6    # "matched":I
    .restart local v2    # "matched":I
    :goto_4
    new-instance v6, Lorg/aospextended/screenshot/longshot/match/MatchData;

    iget-object v7, v0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mContext:Landroid/content/Context;

    iget v8, v0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mIndex:I

    invoke-direct {v6, v7, v8}, Lorg/aospextended/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    move-object v15, v6

    .line 67
    .local v15, "data":Lorg/aospextended/screenshot/longshot/match/MatchData;
    add-int/lit8 v8, v2, -0x1

    const/4 v12, 0x0

    iget-object v13, v0, Lorg/aospextended/screenshot/longshot/match/UndoMatcher;->mSameDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    move v7, v2

    move v9, v5

    move-object v10, v3

    move-object v11, v4

    invoke-virtual/range {v6 .. v13}, Lorg/aospextended/screenshot/longshot/match/MatchData;->init(III[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;ZLorg/aospextended/screenshot/longshot/dump/BitmapDumper;)V

    .line 68
    return-object v15
.end method
