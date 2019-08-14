.class public Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;
.super Lorg/aospextended/screenshot/longshot/match/BaseMatcher;
.source "StitchLastMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    }
.end annotation


# static fields
.field private static final FILE_PREFIX:Ljava/lang/String; = "tracing"

.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 42
    sget v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_0

    .line 60
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    goto :goto_0

    .line 44
    :pswitch_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_5:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 46
    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_4:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 50
    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_3:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 54
    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LINES_STITCH_LAST_LEVEL_2:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    .line 58
    nop

    .line 65
    :goto_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_LAST_LEVEL_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 67
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_STITCH_LAST_CURR:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    .line 70
    const-string v0, "Longshot.StitchLastMatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StitchLastMatcher LEVEL_STITCH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOffsetCurr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOffsetLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTracingBitmapBottom(Ljava/lang/String;)I
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "bottom":I
    const-string v1, "_"

    .line 468
    .local v1, "divider":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "data":[Ljava/lang/String;
    :try_start_0
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 471
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 475
    :cond_0
    goto :goto_0

    .line 473
    :catch_0
    move-exception v3

    .line 474
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Longshot.StitchLastMatcher"

    const-string v5, "bottom value does exsit"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v3, "Longshot.StitchLastMatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTracingBitmapBottom :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v0
.end method

.method public static mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "topBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "bottomBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "isBaseMax"    # Z

    .line 430
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_6

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 435
    :cond_0
    const/4 v1, 0x0

    .line 436
    .local v1, "width":I
    if-eqz p2, :cond_2

    .line 437
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_0
    move v1, v2

    goto :goto_2

    .line 439
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    :goto_1
    move v1, v2

    .line 441
    :goto_2
    move-object v2, p0

    .line 442
    .local v2, "tempBitmapT":Landroid/graphics/Bitmap;
    move-object v3, p1

    .line 444
    .local v3, "tempBitmapB":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eq v4, v1, :cond_4

    .line 445
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0, v1, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 446
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 447
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p1, v1, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 450
    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 452
    .local v4, "height":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 453
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 455
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 456
    .local v8, "topRect":Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v6, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    .local v9, "bottomRect":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v10, v6, v11, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v10

    .line 460
    .local v6, "bottomRectT":Landroid/graphics/Rect;
    invoke-virtual {v7, v2, v8, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 461
    invoke-virtual {v7, v3, v9, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 462
    return-object v5

    .line 432
    .end local v1    # "width":I
    .end local v2    # "tempBitmapT":Landroid/graphics/Bitmap;
    .end local v3    # "tempBitmapB":Landroid/graphics/Bitmap;
    .end local v4    # "height":I
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bottomRectT":Landroid/graphics/Rect;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "topRect":Landroid/graphics/Rect;
    .end local v9    # "bottomRect":Landroid/graphics/Rect;
    :cond_6
    :goto_4
    const-string v1, "Longshot.StitchLastMatcher"

    const-string v2, "incorrect bitmaps"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-object v0
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 91
    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->shouldDumpForTrace()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    .line 84
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 85
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 86
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/aospextended/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 87
    return-void
.end method

.method protected varargs getCurr(Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 22
    .param p1, "dumper"    # Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "cut"    # I
    .param p4, "bitmaps"    # [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 373
    move-object/from16 v2, p4

    invoke-static/range {p4 .. p4}, Lorg/aospextended/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth([Landroid/graphics/Bitmap;)I

    move-result v3

    .line 374
    .local v3, "w":I
    invoke-static/range {p4 .. p4}, Lorg/aospextended/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight([Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int v4, v4, p3

    .line 375
    .local v4, "h":I
    const/4 v5, 0x0

    .line 377
    .local v5, "i":I
    move v6, v4

    .line 378
    .local v6, "size":I
    new-array v7, v6, [Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 379
    .local v7, "lines":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    array-length v8, v2

    const/4 v9, 0x0

    move v10, v5

    move v5, v9

    .end local v5    # "i":I
    .local v10, "i":I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v14, v2, v5

    .line 380
    .local v14, "bitmap":Landroid/graphics/Bitmap;
    move v13, v10

    move v10, v9

    .local v10, "y":I
    .local v13, "i":I
    :goto_1
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_0

    if-ge v13, v6, :cond_0

    .line 381
    add-int/lit8 v17, v13, 0x1

    .local v17, "i":I
    new-instance v18, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    iget v11, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int v15, v9, v11

    iget v11, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v11, v3, v11

    iget v12, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int v16, v11, v12

    const/16 v19, 0x1

    move-object/from16 v11, v18

    move-object v12, v14

    move/from16 v20, v13

    move v13, v15

    .end local v13    # "i":I
    .local v20, "i":I
    move-object/from16 v21, v14

    move v14, v10

    .end local v14    # "bitmap":Landroid/graphics/Bitmap;
    .local v21, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v11 .. v16}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v18, v7, v20

    .line 380
    .end local v20    # "i":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v13, v17

    move-object/from16 v14, v21

    goto :goto_1

    .line 379
    .end local v10    # "y":I
    .end local v17    # "i":I
    .end local v21    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "i":I
    :cond_0
    move/from16 v20, v13

    .end local v13    # "i":I
    .restart local v20    # "i":I
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v20

    goto :goto_0

    .line 385
    .end local v20    # "i":I
    .local v10, "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 386
    array-length v5, v7

    invoke-virtual {v1, v7, v9, v5}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->dump([Lorg/aospextended/screenshot/longshot/bitmap/Pixels;II)V

    .line 388
    aget-object v5, v2, v9

    const/4 v8, 0x1

    aget-object v9, v2, v8

    invoke-static {v5, v9, v8}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mergeBitmap_TB(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 389
    .local v5, "currentBitmapFull":Landroid/graphics/Bitmap;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tracing_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "_current"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 392
    .end local v5    # "currentBitmapFull":Landroid/graphics/Bitmap;
    :cond_2
    return-object v7
.end method

.method protected getCurrOffset(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)I
    .locals 1
    .param p1, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 404
    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getCurrPixels(ILorg/aospextended/screenshot/longshot/cache/BitmapCache;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 400
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mCurrDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mOffsetCurr:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getCurr(Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;II[Landroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getLast(Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 18
    .param p1, "dumper"    # Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 348
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 349
    .local v2, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 350
    .local v3, "h":I
    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 351
    .local v5, "size":I
    sub-int v6, v3, v5

    move/from16 v7, p2

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v7, v6

    .end local p2    # "offset":I
    .local v7, "offset":I
    iput v6, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 352
    new-array v6, v5, [Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 353
    .local v6, "lines":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    sub-int v8, v3, v5

    sub-int/2addr v8, v7

    .line 354
    .local v8, "pos":I
    const/4 v9, 0x0

    move v10, v9

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_0

    .line 355
    new-instance v17, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    iget v11, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    add-int v13, v9, v11

    add-int v14, v10, v8

    iget v11, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mLeftSideOffset:I

    sub-int v11, v2, v11

    iget v12, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mRightSideOffset:I

    sub-int v15, v11, v12

    const/16 v16, 0x1

    move-object/from16 v11, v17

    move-object/from16 v12, p4

    invoke-direct/range {v11 .. v16}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v17, v6, v10

    .line 354
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 359
    .end local v10    # "i":I
    :cond_0
    const-string v10, "Longshot.StitchLastMatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getLast pos start:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " pos end:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v12, v8, v5

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " bitmap h:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v1, :cond_1

    .line 364
    const-string v10, "tracing_0_last"

    move-object/from16 v11, p4

    invoke-virtual {v1, v11, v10}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 366
    array-length v10, v6

    invoke-virtual {v1, v6, v9, v10}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->dump([Lorg/aospextended/screenshot/longshot/bitmap/Pixels;II)V

    goto :goto_1

    .line 368
    :cond_1
    move-object/from16 v11, p4

    :goto_1
    return-object v6
.end method

.method protected getLastPixels(ILorg/aospextended/screenshot/longshot/cache/BitmapCache;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "cache"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    .line 396
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mLastDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    iget v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSize:I

    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getLast(Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;IILandroid/graphics/Bitmap;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    return-object v0
.end method

.method protected getStep()I
    .locals 1

    .line 96
    sget v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_0

    .line 104
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 98
    :pswitch_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_4:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 100
    :pswitch_1
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_3:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 102
    :pswitch_2
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STEP_STITCH_LAST_LEVEL_2:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "StitchLast"

    return-object v0
.end method

.method getTraingBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "islast"    # Z

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/aospextended/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "filepath":Ljava/lang/String;
    const-string v1, "Longshot.StitchLastMatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " trace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v3, "last"

    goto :goto_0

    :cond_0
    const-string v3, "currnet"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, "imagefile":Ljava/io/File;
    const/4 v3, 0x0

    .line 415
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 416
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 417
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "imagefile":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 418
    :catch_1
    move-exception v2

    .line 419
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 422
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 424
    :goto_2
    return-object v1
.end method

.method public run(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Lorg/aospextended/screenshot/longshot/match/MatchData;
    .locals 35
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    move-object/from16 v0, p0

    .line 110
    const-string v1, "StitchLastMatcher.match"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->isEnableStitchLastTraceBitmap()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v0, v3}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    .local v1, "specialTracingBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    new-instance v4, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v4, v1, v2, v2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    .line 115
    .end local p1    # "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .local v4, "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    :goto_0
    invoke-virtual {v0, v2}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getTraingBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 116
    invoke-static {v2}, Lorg/aospextended/screenshot/util/Utils;->getStitchLastTraceBitmap(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getTracingBitmapBottom(Ljava/lang/String;)I

    move-result v5

    .line 117
    .local v5, "tracingBitmapBottom":I
    if-eqz v1, :cond_1

    new-instance v6, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {v6, v1, v2, v5}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    move-object v1, v6

    .end local v5    # "tracingBitmapBottom":I
    .end local p2    # "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .local v1, "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    goto :goto_2

    .line 122
    .end local v1    # "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .end local v4    # "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .restart local p1    # "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .restart local p2    # "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    :cond_2
    move-object/from16 v4, p1

    move-object/from16 v1, p2

    .end local p1    # "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .end local p2    # "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .restart local v1    # "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .restart local v4    # "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 123
    .local v5, "startTime":J
    iget v7, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mOffsetLast:I

    .line 124
    .local v7, "offsetLast":I
    invoke-virtual {v0, v4}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getCurrOffset(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)I

    move-result v8

    .line 125
    .local v8, "offsetCurr":I
    invoke-virtual {v0, v7, v4}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getLastPixels(ILorg/aospextended/screenshot/longshot/cache/BitmapCache;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v15

    .line 126
    .local v15, "lineLast":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    invoke-virtual {v0, v8, v1}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->getCurrPixels(ILorg/aospextended/screenshot/longshot/cache/BitmapCache;)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v14

    .line 127
    .local v14, "lineCurr":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 128
    .local v9, "endTime":J
    const-string v11, "Longshot.StitchLastMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " get mapping Pixels cost:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v4

    sub-long v3, v9, v5

    .end local v4    # "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .local v18, "last":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 132
    .local v4, "matched":I
    const/4 v11, 0x0

    .line 134
    .local v11, "same":Z
    const/4 v12, 0x0

    .line 135
    .local v12, "count":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 140
    const/4 v13, 0x0

    .line 141
    .local v13, "checkpoint":I
    const/16 v16, 0x0

    .line 142
    .local v16, "maxRepeat":I
    array-length v2, v15

    new-array v2, v2, [Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    .line 143
    .local v2, "mLastPattern":[Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v21, v20

    .end local v20    # "i":I
    .local v21, "i":I
    move-object/from16 v22, v1

    array-length v1, v2

    .end local v1    # "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .local v22, "curr":Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    move/from16 v23, v3

    move/from16 v3, v21

    if-ge v3, v1, :cond_3

    .line 144
    .end local v21    # "i":I
    .local v3, "i":I
    .local v23, "pos":I
    new-instance v1, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    move/from16 v24, v4

    aget-object v4, v15, v3

    .end local v4    # "matched":I
    .local v24, "matched":I
    invoke-direct {v1, v0, v3, v4}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;-><init>(Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;ILorg/aospextended/screenshot/longshot/bitmap/Pixels;)V

    aput-object v1, v2, v3

    .line 143
    add-int/lit8 v20, v3, 0x1

    .end local v3    # "i":I
    .restart local v20    # "i":I
    move-object/from16 v1, v22

    move/from16 v3, v23

    move/from16 v4, v24

    goto :goto_3

    .line 146
    .end local v20    # "i":I
    .end local v24    # "matched":I
    .restart local v4    # "matched":I
    :cond_3
    move/from16 v24, v4

    move v1, v13

    .end local v4    # "matched":I
    .end local v13    # "checkpoint":I
    .local v1, "checkpoint":I
    .restart local v24    # "matched":I
    :goto_4
    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 147
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;->diff(Ljava/lang/Object;)I

    move-result v3

    .line 148
    .local v3, "currentSimilarity":I
    aget-object v4, v2, v1

    invoke-virtual {v4, v3}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setSimilarity(I)V

    .line 149
    const/4 v4, 0x0

    .line 150
    .local v4, "repeatCount":I
    add-int/lit8 v13, v1, 0x1

    .line 151
    .local v13, "nextPoint":I
    :goto_5
    move/from16 v25, v7

    array-length v7, v2

    .end local v7    # "offsetLast":I
    .local v25, "offsetLast":I
    if-ge v13, v7, :cond_6

    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 153
    aget-object v7, v2, v1

    invoke-virtual {v7}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v7

    move/from16 v26, v8

    aget-object v8, v2, v13

    .end local v8    # "offsetCurr":I
    .local v26, "offsetCurr":I
    invoke-virtual {v8}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 154
    aget-object v7, v2, v13

    invoke-virtual {v7, v3}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setSimilarity(I)V

    .line 160
    add-int/lit8 v13, v13, 0x1

    .line 161
    array-length v7, v2

    if-ne v13, v7, :cond_4

    .line 162
    aget-object v7, v2, v1

    invoke-virtual {v7, v4}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setRepeatCount(I)V

    .line 150
    :cond_4
    move/from16 v7, v25

    move/from16 v8, v26

    goto :goto_5

    .line 156
    :cond_5
    aget-object v7, v2, v1

    invoke-virtual {v7, v4}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setRepeatCount(I)V

    .line 157
    goto :goto_6

    .line 165
    .end local v26    # "offsetCurr":I
    .restart local v8    # "offsetCurr":I
    :cond_6
    move/from16 v26, v8

    .end local v8    # "offsetCurr":I
    .restart local v26    # "offsetCurr":I
    :goto_6
    move v1, v13

    .line 166
    .end local v3    # "currentSimilarity":I
    .end local v4    # "repeatCount":I
    .end local v13    # "nextPoint":I
    nop

    .line 146
    move/from16 v7, v25

    move/from16 v8, v26

    goto :goto_4

    .line 168
    .end local v25    # "offsetLast":I
    .end local v26    # "offsetCurr":I
    .restart local v7    # "offsetLast":I
    .restart local v8    # "offsetCurr":I
    :cond_7
    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "offsetLast":I
    .end local v8    # "offsetCurr":I
    .restart local v25    # "offsetLast":I
    .restart local v26    # "offsetCurr":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v3, "similaritymap":Ljava/util/HashMap;
    move/from16 v7, v16

    const/4 v4, 0x0

    .end local v16    # "maxRepeat":I
    .local v4, "i":I
    .local v7, "maxRepeat":I
    :goto_7
    array-length v8, v2

    if-ge v4, v8, :cond_c

    .line 170
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v8, "similarity":Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_8
    move/from16 v27, v1

    aget-object v1, v2, v4

    .end local v1    # "checkpoint":I
    .local v27, "checkpoint":I
    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v1

    if-ge v13, v1, :cond_8

    .line 172
    const-string v1, "-"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    add-int/lit8 v13, v13, 0xa

    move/from16 v1, v27

    goto :goto_8

    .line 175
    .end local v13    # "j":I
    :cond_8
    aget-object v1, v2, v4

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v1

    .line 176
    .local v1, "key":I
    aget-object v13, v2, v4

    invoke-virtual {v13}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v13

    if-lez v13, :cond_a

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v28, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .end local v8    # "similarity":Ljava/lang/StringBuffer;
    .local v28, "similarity":Ljava/lang/StringBuffer;
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-wide/from16 v29, v9

    aget-object v9, v2, v4

    .end local v9    # "endTime":J
    .local v29, "endTime":J
    invoke-virtual {v9}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 180
    .end local v28    # "similarity":Ljava/lang/StringBuffer;
    .end local v29    # "endTime":J
    .restart local v8    # "similarity":Ljava/lang/StringBuffer;
    .restart local v9    # "endTime":J
    :cond_9
    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    .end local v8    # "similarity":Ljava/lang/StringBuffer;
    .end local v9    # "endTime":J
    .restart local v28    # "similarity":Ljava/lang/StringBuffer;
    .restart local v29    # "endTime":J
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getRepeatCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 184
    .end local v28    # "similarity":Ljava/lang/StringBuffer;
    .end local v29    # "endTime":J
    .restart local v8    # "similarity":Ljava/lang/StringBuffer;
    .restart local v9    # "endTime":J
    :cond_a
    move-object/from16 v28, v8

    move-wide/from16 v29, v9

    .end local v8    # "similarity":Ljava/lang/StringBuffer;
    .end local v9    # "endTime":J
    .restart local v28    # "similarity":Ljava/lang/StringBuffer;
    .restart local v29    # "endTime":J
    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v7, :cond_b

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 169
    .end local v7    # "maxRepeat":I
    .end local v28    # "similarity":Ljava/lang/StringBuffer;
    .local v1, "maxRepeat":I
    move v7, v1

    .end local v1    # "maxRepeat":I
    .restart local v7    # "maxRepeat":I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v27

    move-wide/from16 v9, v29

    goto/16 :goto_7

    .line 191
    .end local v4    # "i":I
    .end local v27    # "checkpoint":I
    .end local v29    # "endTime":J
    .local v1, "checkpoint":I
    .restart local v9    # "endTime":J
    :cond_c
    move/from16 v27, v1

    move-wide/from16 v29, v9

    .end local v1    # "checkpoint":I
    .end local v9    # "endTime":J
    .restart local v27    # "checkpoint":I
    .restart local v29    # "endTime":J
    mul-int/lit8 v1, v7, 0x64

    array-length v4, v2

    div-int/2addr v1, v4

    .line 192
    .local v1, "repeatrate":I
    const-string v4, "Longshot.StitchLastMatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "repeat rate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_a
    array-length v8, v15

    if-ge v4, v8, :cond_1d

    .line 235
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v8, "fristCheckList":Ljava/util/List;, "Ljava/util/List<Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;>;"
    const/4 v9, 0x0

    .line 237
    .local v9, "minRepeatCount":I
    const/16 v10, 0x3c

    if-le v1, v10, :cond_12

    .line 238
    move v10, v9

    move v9, v4

    .local v9, "j":I
    .local v10, "minRepeatCount":I
    :goto_b
    array-length v13, v2

    if-ge v9, v13, :cond_11

    .line 239
    aget-object v13, v2, v9

    invoke-virtual {v13}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getSimilarity()I

    move-result v13

    .line 240
    .local v13, "similarity":I
    const/16 v16, 0x0

    .line 241
    .local v16, "repeatCount":I
    move/from16 v31, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .end local v1    # "repeatrate":I
    .local v31, "repeatrate":I
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 242
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 247
    move-object/from16 v32, v3

    move/from16 v33, v7

    .end local v3    # "similaritymap":Ljava/util/HashMap;
    .end local v7    # "maxRepeat":I
    .end local v16    # "repeatCount":I
    .local v1, "repeatCount":I
    .local v32, "similaritymap":Ljava/util/HashMap;
    .local v33, "maxRepeat":I
    :goto_c
    move/from16 v1, v16

    goto :goto_d

    .line 244
    .end local v1    # "repeatCount":I
    .end local v32    # "similaritymap":Ljava/util/HashMap;
    .end local v33    # "maxRepeat":I
    .restart local v3    # "similaritymap":Ljava/util/HashMap;
    .restart local v7    # "maxRepeat":I
    .restart local v16    # "repeatCount":I
    :cond_d
    const-string v1, "Longshot.StitchLastMatcher"

    move-object/from16 v32, v3

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "similaritymap":Ljava/util/HashMap;
    .restart local v32    # "similaritymap":Ljava/util/HashMap;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v33, v7

    const-string v7, "get repeatCount fail at:"

    .end local v7    # "maxRepeat":I
    .restart local v33    # "maxRepeat":I
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 247
    .end local v16    # "repeatCount":I
    .restart local v1    # "repeatCount":I
    :goto_d
    if-lez v10, :cond_f

    .line 248
    if-ge v1, v10, :cond_e

    .line 249
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 250
    aget-object v3, v2, v9

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    move v3, v1

    .line 238
    .end local v10    # "minRepeatCount":I
    .local v3, "minRepeatCount":I
    move v10, v3

    goto :goto_e

    .line 252
    .end local v3    # "minRepeatCount":I
    .restart local v10    # "minRepeatCount":I
    :cond_e
    if-ne v1, v10, :cond_10

    .line 253
    aget-object v3, v2, v9

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 256
    :cond_f
    nop

    .line 238
    .end local v10    # "minRepeatCount":I
    .end local v13    # "similarity":I
    .local v1, "minRepeatCount":I
    move v10, v1

    .end local v1    # "minRepeatCount":I
    .restart local v10    # "minRepeatCount":I
    :cond_10
    :goto_e
    iget v1, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int/2addr v9, v1

    move/from16 v1, v31

    move-object/from16 v3, v32

    move/from16 v7, v33

    goto :goto_b

    .line 267
    .end local v9    # "j":I
    .end local v31    # "repeatrate":I
    .end local v32    # "similaritymap":Ljava/util/HashMap;
    .end local v33    # "maxRepeat":I
    .local v1, "repeatrate":I
    .local v3, "similaritymap":Ljava/util/HashMap;
    .restart local v7    # "maxRepeat":I
    :cond_11
    move/from16 v31, v1

    move-object/from16 v32, v3

    move/from16 v33, v7

    move v9, v10

    goto :goto_f

    .end local v10    # "minRepeatCount":I
    .local v9, "minRepeatCount":I
    :cond_12
    move/from16 v31, v1

    move-object/from16 v32, v3

    move/from16 v33, v7

    .end local v1    # "repeatrate":I
    .end local v3    # "similaritymap":Ljava/util/HashMap;
    .end local v7    # "maxRepeat":I
    .restart local v31    # "repeatrate":I
    .restart local v32    # "similaritymap":Ljava/util/HashMap;
    .restart local v33    # "maxRepeat":I
    :goto_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    array-length v3, v14

    array-length v7, v15

    sub-int/2addr v7, v4

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_1b

    .line 268
    if-eqz v11, :cond_13

    .line 269
    array-length v3, v15

    sub-int/2addr v3, v4

    .line 270
    .end local v24    # "matched":I
    .local v3, "matched":I
    add-int v7, v1, v3

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    .line 271
    .end local v23    # "pos":I
    .local v7, "pos":I
    nop

    .line 320
    move/from16 v24, v3

    move/from16 v23, v7

    goto/16 :goto_17

    .line 273
    .end local v3    # "matched":I
    .end local v7    # "pos":I
    .restart local v23    # "pos":I
    .restart local v24    # "matched":I
    :cond_13
    const/4 v3, 0x1

    .line 277
    .end local v11    # "same":Z
    .local v3, "same":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    .line 278
    .local v10, "checkItem":Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    invoke-virtual {v10}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getIndex()I

    move-result v11

    .line 279
    .local v11, "checkIndex":I
    invoke-virtual {v10}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v13

    add-int v16, v11, v1

    sub-int v16, v16, v4

    move/from16 v34, v3

    aget-object v3, v14, v16

    .end local v3    # "same":Z
    .local v34, "same":Z
    invoke-virtual {v13, v3}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 280
    const/4 v3, 0x0

    .line 282
    .end local v34    # "same":Z
    .restart local v3    # "same":Z
    add-int/lit8 v12, v12, 0x1

    .line 284
    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setChecked(Z)V

    .line 285
    nop

    .line 291
    move/from16 v34, v3

    goto :goto_12

    .line 287
    .end local v3    # "same":Z
    .end local v10    # "checkItem":Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    .end local v11    # "checkIndex":I
    .restart local v34    # "same":Z
    :cond_14
    nop

    .line 277
    move/from16 v3, v34

    goto :goto_11

    .line 291
    .end local v34    # "same":Z
    .restart local v3    # "same":Z
    :cond_15
    move/from16 v34, v3

    .end local v3    # "same":Z
    .restart local v34    # "same":Z
    :goto_12
    if-eqz v34, :cond_17

    .line 292
    move v3, v4

    .local v3, "j":I
    :goto_13
    array-length v7, v15

    if-ge v3, v7, :cond_17

    .line 294
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getChecked()Z

    move-result v7

    if-nez v7, :cond_16

    .line 295
    aget-object v7, v2, v3

    invoke-virtual {v7}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->getPixels()Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v7

    add-int v10, v3, v1

    sub-int/2addr v10, v4

    aget-object v10, v14, v10

    invoke-virtual {v7, v10}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 296
    const/16 v34, 0x0

    .line 297
    goto :goto_14

    .line 301
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 292
    iget v7, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mStep:I

    add-int/2addr v3, v7

    goto :goto_13

    .line 305
    .end local v3    # "j":I
    :cond_17
    :goto_14
    if-eqz v34, :cond_19

    .line 306
    array-length v3, v15

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    .line 307
    .restart local v3    # "j":I
    aget-object v10, v15, v3

    add-int v11, v1, v3

    sub-int/2addr v11, v4

    aget-object v11, v14, v11

    invoke-virtual {v10, v11}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    .line 308
    const/16 v34, 0x0

    .line 311
    :cond_18
    add-int/lit8 v12, v12, 0x1

    .end local v3    # "j":I
    goto :goto_15

    .line 315
    :cond_19
    const/4 v7, 0x1

    .end local v34    # "same":Z
    .local v11, "same":Z
    :goto_15
    move/from16 v11, v34

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;

    .line 316
    .restart local v10    # "checkItem":Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->setChecked(Z)V

    .line 317
    .end local v10    # "checkItem":Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
    goto :goto_16

    .line 267
    :cond_1a
    const/4 v13, 0x0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10

    .line 320
    .end local v1    # "i":I
    :cond_1b
    :goto_17
    const/4 v7, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_1c

    .line 321
    nop

    .line 325
    move v7, v11

    move v4, v12

    move/from16 v3, v23

    move/from16 v1, v24

    goto :goto_18

    .line 231
    .end local v8    # "fristCheckList":Ljava/util/List;, "Ljava/util/List<Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;>;"
    .end local v9    # "minRepeatCount":I
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v31

    move-object/from16 v3, v32

    move/from16 v7, v33

    goto/16 :goto_a

    .line 325
    .end local v4    # "k":I
    .end local v31    # "repeatrate":I
    .end local v32    # "similaritymap":Ljava/util/HashMap;
    .end local v33    # "maxRepeat":I
    .local v1, "repeatrate":I
    .local v3, "similaritymap":Ljava/util/HashMap;
    .local v7, "maxRepeat":I
    :cond_1d
    move/from16 v31, v1

    move-object/from16 v32, v3

    move/from16 v33, v7

    move v7, v11

    move v4, v12

    move/from16 v3, v23

    move/from16 v1, v24

    .end local v11    # "same":Z
    .end local v12    # "count":I
    .end local v23    # "pos":I
    .end local v24    # "matched":I
    .local v1, "matched":I
    .local v3, "pos":I
    .local v4, "count":I
    .local v7, "same":Z
    .restart local v31    # "repeatrate":I
    .restart local v32    # "similaritymap":Ljava/util/HashMap;
    .restart local v33    # "maxRepeat":I
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 326
    .end local v29    # "endTime":J
    .local v19, "endTime":J
    const-string v8, "Longshot.StitchLastMatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " matched cost:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, v19, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 328
    const-string v8, "StitchLastMatcher.data.init"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 330
    new-instance v8, Lorg/aospextended/screenshot/longshot/match/MatchData;

    iget-object v9, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mContext:Landroid/content/Context;

    iget v10, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mIndex:I

    invoke-direct {v8, v9, v10}, Lorg/aospextended/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 331
    .local v8, "data":Lorg/aospextended/screenshot/longshot/match/MatchData;
    add-int/lit8 v11, v1, -0x1

    const/16 v16, 0x1

    iget-object v13, v0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;->mSameDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    move-object v9, v8

    move v10, v1

    move v12, v3

    move-object/from16 v17, v13

    move-object v13, v15

    move-object/from16 v21, v14

    .end local v14    # "lineCurr":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .local v21, "lineCurr":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v23, v15

    move/from16 v15, v16

    .end local v15    # "lineLast":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .local v23, "lineLast":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    move-object/from16 v16, v17

    invoke-virtual/range {v9 .. v16}, Lorg/aospextended/screenshot/longshot/match/MatchData;->init(III[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;ZLorg/aospextended/screenshot/longshot/dump/BitmapDumper;)V

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 333
    .end local v19    # "endTime":J
    .local v9, "endTime":J
    const-string v11, "Longshot.StitchLastMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " data.init cost:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v13, v9, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 336
    const-string v11, "Longshot.StitchLastMatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "matched pos:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " matched:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " count:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-object v8
.end method
