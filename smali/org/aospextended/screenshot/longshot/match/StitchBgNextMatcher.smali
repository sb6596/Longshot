.class public Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;
.super Lorg/aospextended/screenshot/longshot/match/BaseMatcher;
.source "StitchBgNextMatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextMatcher"


# instance fields
.field private mDensity:F

.field private mExtend:I

.field private mPeak:D

.field private mPos:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/match/BaseMatcher;-><init>(Landroid/content/Context;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    .line 37
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    .line 38
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LINES_STITCH_BGNEXT:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    .line 39
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_LAST:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    .line 40
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_STITCH_BGNEXT_CURR:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    .line 41
    return-void
.end method

.method private findMisregistration([Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;II)V
    .locals 8
    .param p1, "norPoc"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p2, "fftPoc"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 188
    const/4 v0, 0x0

    move v1, v0

    .local v1, "y":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 189
    move v2, v0

    .local v2, "x":I
    :goto_1
    if-ge v2, p3, :cond_1

    .line 190
    mul-int v3, v1, p3

    add-int/2addr v3, v2

    .line 191
    .local v3, "idx":I
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p2, v3

    invoke-virtual {v6}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 192
    .local v4, "spectrum":D
    iget-wide v6, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 193
    iput-wide v4, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPeak:D

    .line 194
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v2, v6, Landroid/graphics/Point;->x:I

    .line 195
    iget-object v6, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iput v1, v6, Landroid/graphics/Point;->y:I

    .line 189
    .end local v3    # "idx":I
    .end local v4    # "spectrum":D
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v2    # "x":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v1    # "y":I
    :cond_2
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p3, v0

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_3

    .line 200
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v1, p3, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 202
    :cond_3
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p4, v0

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_4

    .line 203
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, p4, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 205
    :cond_4
    return-void
.end method

.method private getLines(II[ILorg/aospextended/screenshot/longshot/dump/BitmapDumper;Z)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 5
    .param p1, "wSize"    # I
    .param p2, "hSize"    # I
    .param p3, "buffer"    # [I
    .param p4, "dumper"    # Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;
    .param p5, "isCurr"    # Z

    .line 108
    new-array v0, p2, [Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 109
    .local v0, "lines":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 110
    new-array v3, p1, [I

    .line 111
    .local v3, "p":[I
    mul-int v4, p1, v2

    invoke-static {p3, v4, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    new-instance v4, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    invoke-direct {v4, v3}, Lorg/aospextended/screenshot/longshot/bitmap/Pixels;-><init>([I)V

    aput-object v4, v0, v2

    .line 109
    .end local v3    # "p":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_0
    if-eqz p4, :cond_1

    .line 115
    array-length v2, v0

    invoke-virtual {p4, v0, v1, v2}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->dump([Lorg/aospextended/screenshot/longshot/bitmap/Pixels;II)V

    .line 117
    :cond_1
    return-object v0
.end method

.method private getPixels(IIILandroid/graphics/Bitmap;Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;Z)[D
    .locals 20
    .param p1, "wSize"    # I
    .param p2, "hSize"    # I
    .param p3, "offset"    # I
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "dumper"    # Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;
    .param p6, "isCurr"    # Z

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 121
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 122
    .local v3, "w":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 123
    .local v4, "h":I
    sget-object v5, Lorg/aospextended/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 124
    .local v5, "nLength":I
    iget v6, v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    sub-int v6, p1, v6

    div-int/2addr v6, v5

    .line 125
    .local v6, "wLength":I
    int-to-float v7, v3

    iget v8, v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    div-float/2addr v7, v8

    iget v8, v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    .line 126
    .local v7, "pExtend":I
    move/from16 v8, p2

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 127
    .end local p2    # "hSize":I
    .local v8, "hSize":I
    mul-int v9, p1, v8

    new-array v9, v9, [D

    .line 128
    .local v9, "pixels":[D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_4

    .line 129
    if-eqz p6, :cond_0

    add-int v12, v11, p3

    goto :goto_1

    :cond_0
    sub-int v12, v11, p3

    add-int/2addr v12, v4

    sub-int/2addr v12, v8

    .line 130
    .local v12, "y":I
    :goto_1
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v5, :cond_2

    .line 131
    sget-object v10, Lorg/aospextended/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 132
    .local v10, "pos":I
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_3
    move v15, v14

    .end local v14    # "k":I
    .local v15, "k":I
    move v1, v15

    if-ge v1, v6, :cond_1

    .line 133
    .end local v15    # "k":I
    .local v1, "k":I
    move/from16 v16, v3

    int-to-float v3, v10

    .end local v3    # "w":I
    .local v16, "w":I
    move/from16 v17, v4

    int-to-float v4, v1

    .end local v4    # "h":I
    .local v17, "h":I
    move/from16 v18, v5

    iget v5, v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    .end local v5    # "nLength":I
    .local v18, "nLength":I
    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 134
    .local v3, "x":I
    mul-int v4, v11, p1

    mul-int v5, v13, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 135
    .local v4, "n":I
    invoke-virtual {v2, v3, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-direct {v0, v5}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v5

    move/from16 v19, v6

    int-to-double v5, v5

    .end local v6    # "wLength":I
    .local v19, "wLength":I
    aput-wide v5, v9, v4

    .line 132
    .end local v3    # "x":I
    .end local v4    # "n":I
    add-int/lit8 v14, v1, 0x1

    .end local v1    # "k":I
    .restart local v14    # "k":I
    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto :goto_3

    .line 130
    .end local v10    # "pos":I
    .end local v14    # "k":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    .end local v18    # "nLength":I
    .end local v19    # "wLength":I
    .local v3, "w":I
    .local v4, "h":I
    .restart local v5    # "nLength":I
    .restart local v6    # "wLength":I
    :cond_1
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "nLength":I
    .end local v6    # "wLength":I
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    .restart local v18    # "nLength":I
    .restart local v19    # "wLength":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 138
    .end local v13    # "j":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    .end local v18    # "nLength":I
    .end local v19    # "wLength":I
    .restart local v3    # "w":I
    .restart local v4    # "h":I
    .restart local v5    # "nLength":I
    .restart local v6    # "wLength":I
    :cond_2
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "nLength":I
    .end local v6    # "wLength":I
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    .restart local v18    # "nLength":I
    .restart local v19    # "wLength":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    iget v3, v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    if-ge v1, v3, :cond_3

    .line 139
    int-to-float v3, v7

    int-to-float v4, v1

    iget v5, v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mDensity:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 140
    .local v3, "x":I
    mul-int v4, v11, p1

    add-int v4, v4, p1

    iget v5, v0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 141
    .local v4, "n":I
    invoke-virtual {v2, v3, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-direct {v0, v5}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->grayScale(I)I

    move-result v5

    int-to-double v5, v5

    aput-wide v5, v9, v4

    .line 138
    .end local v3    # "x":I
    .end local v4    # "n":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 128
    .end local v1    # "j":I
    .end local v12    # "y":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_0

    .line 144
    .end local v11    # "i":I
    .end local v16    # "w":I
    .end local v17    # "h":I
    .end local v18    # "nLength":I
    .end local v19    # "wLength":I
    .local v3, "w":I
    .local v4, "h":I
    .restart local v5    # "nLength":I
    .restart local v6    # "wLength":I
    :cond_4
    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v3    # "w":I
    .end local v4    # "h":I
    .end local v5    # "nLength":I
    .end local v6    # "wLength":I
    .restart local v16    # "w":I
    .restart local v17    # "h":I
    .restart local v18    # "nLength":I
    .restart local v19    # "wLength":I
    return-object v9
.end method

.method private grayScale(I)I
    .locals 0
    .param p1, "pixel"    # I

    .line 159
    return p1
.end method

.method private spectrum([Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;)V
    .locals 9
    .param p1, "dstNor"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p2, "dstFft"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p3, "norLast"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p4, "fftLast"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p5, "norCurr"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p6, "fftCurr"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 170
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "spectrum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 173
    aget-object v3, p3, v2

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p3, v2

    invoke-virtual {v5}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    aget-object v5, p4, v2

    invoke-virtual {v5}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    aget-object v7, p4, v2

    invoke-virtual {v7}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 174
    aget-object v3, p3, v2

    invoke-virtual {v3, v0, v1}, Lorg/aospextended/screenshot/longshot/transform/Complex;->divide(D)Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 175
    aget-object v3, p4, v2

    invoke-virtual {v3, v0, v1}, Lorg/aospextended/screenshot/longshot/transform/Complex;->divide(D)Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 177
    aget-object v3, p5, v2

    invoke-virtual {v3}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v3

    aget-object v5, p5, v2

    invoke-virtual {v5}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    mul-double/2addr v3, v5

    aget-object v5, p6, v2

    invoke-virtual {v5}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v5

    aget-object v7, p6, v2

    invoke-virtual {v7}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 178
    aget-object v3, p5, v2

    invoke-virtual {v3, v0, v1}, Lorg/aospextended/screenshot/longshot/transform/Complex;->divide(D)Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 179
    aget-object v3, p6, v2

    invoke-virtual {v3, v0, v1}, Lorg/aospextended/screenshot/longshot/transform/Complex;->divide(D)Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 182
    new-instance v3, Lorg/aospextended/screenshot/longshot/transform/Complex;

    aget-object v4, p3, v2

    invoke-virtual {v4}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p5, v2

    invoke-virtual {v6}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lorg/aospextended/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v3, p1, v2

    .line 183
    new-instance v3, Lorg/aospextended/screenshot/longshot/transform/Complex;

    aget-object v4, p4, v2

    invoke-virtual {v4}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v4

    aget-object v6, p6, v2

    invoke-virtual {v6}, Lorg/aospextended/screenshot/longshot/transform/Complex;->getReal()D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v4, v6

    invoke-direct {v3, v4, v5}, Lorg/aospextended/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v3, p2, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private toInt([D)[I
    .locals 4
    .param p1, "pixels"    # [D

    .line 100
    array-length v0, p1

    new-array v0, v0, [I

    .line 101
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 102
    aget-wide v2, p1, v1

    double-to-int v2, v2

    aput v2, v0, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private transComplex([Lorg/aospextended/screenshot/longshot/transform/Complex;[D)V
    .locals 4
    .param p1, "complexs"    # [Lorg/aospextended/screenshot/longshot/transform/Complex;
    .param p2, "data"    # [D

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 165
    new-instance v1, Lorg/aospextended/screenshot/longshot/transform/Complex;

    aget-wide v2, p2, v0

    invoke-direct {v1, v2, v3}, Lorg/aospextended/screenshot/longshot/transform/Complex;-><init>(D)V

    aput-object v1, p1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    .line 60
    sget-object v0, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected createDumper()V
    .locals 5

    .line 53
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 54
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/NextDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/dump/NextDumper;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 55
    new-instance v0, Lorg/aospextended/screenshot/longshot/dump/SameDumper;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/aospextended/screenshot/longshot/dump/SameDumper;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    .line 56
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "StitchBgNext"

    return-object v0
.end method

.method public run(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Lorg/aospextended/screenshot/longshot/cache/BitmapCache;)Lorg/aospextended/screenshot/longshot/match/MatchData;
    .locals 34
    .param p1, "last"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
    .param p2, "curr"    # Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    move-object/from16 v7, p0

    .line 65
    invoke-virtual/range {p1 .. p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v8, v0, v1

    .line 66
    .local v8, "sizeLast":I
    invoke-virtual/range {p2 .. p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    div-int v9, v0, v1

    .line 67
    .local v9, "sizeCurr":I
    const/16 v20, 0x0

    .line 68
    .local v20, "offset":I
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->BGLINE_SAMPLES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v21

    .line 69
    .local v21, "length":I
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->WIDTH_SAMPLE_LIST:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    div-int v0, v0, v21

    mul-int v0, v0, v21

    iget v1, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mExtend:I

    add-int v15, v0, v1

    .line 70
    .local v15, "wSize":I
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 71
    .local v14, "hSize":I
    mul-int v0, v15, v14

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/transform/Factory;->createTransform(I)Lorg/aospextended/screenshot/longshot/transform/FFT;

    move-result-object v13

    .line 72
    .local v13, "fft":Lorg/aospextended/screenshot/longshot/transform/FFT;
    iget v3, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetLast:I

    invoke-virtual/range {p1 .. p1}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, v15

    move v2, v14

    invoke-direct/range {v0 .. v6}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v12

    .line 73
    .local v12, "pLast":[D
    iget v3, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mOffsetCurr:I

    invoke-virtual/range {p2 .. p2}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->getPixels(IIILandroid/graphics/Bitmap;Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;Z)[D

    move-result-object v11

    .line 74
    .local v11, "pCurr":[D
    mul-int v0, v15, v14

    new-array v10, v0, [Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 75
    .local v10, "norLast":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    invoke-direct {v7, v10, v12}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lorg/aospextended/screenshot/longshot/transform/Complex;[D)V

    .line 76
    invoke-interface {v13, v10}, Lorg/aospextended/screenshot/longshot/transform/FFT;->transform([Lorg/aospextended/screenshot/longshot/transform/Complex;)[Lorg/aospextended/screenshot/longshot/transform/Complex;

    move-result-object v22

    .line 77
    .local v22, "fftLast":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    mul-int v0, v15, v14

    new-array v6, v0, [Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 78
    .local v6, "norCurr":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    invoke-direct {v7, v6, v11}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->transComplex([Lorg/aospextended/screenshot/longshot/transform/Complex;[D)V

    .line 79
    invoke-interface {v13, v6}, Lorg/aospextended/screenshot/longshot/transform/FFT;->transform([Lorg/aospextended/screenshot/longshot/transform/Complex;)[Lorg/aospextended/screenshot/longshot/transform/Complex;

    move-result-object v23

    .line 80
    .local v23, "fftCurr":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    mul-int v0, v15, v14

    new-array v5, v0, [Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 81
    .local v5, "dstNor":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    mul-int v0, v15, v14

    new-array v4, v0, [Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 82
    .local v4, "dstFft":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    move-object v0, v7

    move-object v1, v5

    move-object v2, v4

    move-object v3, v10

    move/from16 v24, v8

    move-object v8, v4

    move-object/from16 v4, v22

    .end local v4    # "dstFft":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    .local v8, "dstFft":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    .local v24, "sizeLast":I
    move/from16 v25, v9

    move-object v9, v5

    move-object v5, v6

    .end local v5    # "dstNor":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    .local v9, "dstNor":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    .local v25, "sizeCurr":I
    move-object/from16 v26, v6

    move-object/from16 v6, v23

    .end local v6    # "norCurr":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    .local v26, "norCurr":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    invoke-direct/range {v0 .. v6}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->spectrum([Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;)V

    .line 83
    invoke-interface {v13, v9}, Lorg/aospextended/screenshot/longshot/transform/FFT;->reverse([Lorg/aospextended/screenshot/longshot/transform/Complex;)[Lorg/aospextended/screenshot/longshot/transform/Complex;

    move-result-object v6

    .line 84
    .end local v9    # "dstNor":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    .local v6, "dstNor":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    invoke-interface {v13, v8}, Lorg/aospextended/screenshot/longshot/transform/FFT;->reverse([Lorg/aospextended/screenshot/longshot/transform/Complex;)[Lorg/aospextended/screenshot/longshot/transform/Complex;

    move-result-object v8

    .line 85
    invoke-direct {v7, v6, v8, v15, v14}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->findMisregistration([Lorg/aospextended/screenshot/longshot/transform/Complex;[Lorg/aospextended/screenshot/longshot/transform/Complex;II)V

    .line 86
    iget-object v0, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, v14, v0

    add-int/lit8 v9, v0, -0x1

    .line 87
    .local v9, "posLast":I
    add-int/lit8 v27, v14, -0x1

    .line 88
    .local v27, "posCurr":I
    iget-object v0, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v28, v14, v0

    .line 89
    .local v28, "matched":I
    invoke-direct {v7, v12}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mLastDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v15

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILorg/aospextended/screenshot/longshot/dump/BitmapDumper;Z)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v29

    .line 90
    .local v29, "pixLast":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    invoke-direct {v7, v11}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->toInt([D)[I

    move-result-object v3

    iget-object v4, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mCurrDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->getLines(II[ILorg/aospextended/screenshot/longshot/dump/BitmapDumper;Z)[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    move-result-object v0

    .line 91
    .local v0, "pixCurr":[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    new-instance v1, Lorg/aospextended/screenshot/longshot/match/MatchData;

    iget-object v2, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mContext:Landroid/content/Context;

    iget v3, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mIndex:I

    invoke-direct {v1, v2, v3}, Lorg/aospextended/screenshot/longshot/match/MatchData;-><init>(Landroid/content/Context;I)V

    .line 92
    .local v1, "data":Lorg/aospextended/screenshot/longshot/match/MatchData;
    iget v2, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mStep:I

    iget-object v3, v7, Lorg/aospextended/screenshot/longshot/match/StitchBgNextMatcher;->mSameDumper:Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;

    const/16 v16, 0x1

    move-object v4, v10

    move-object v10, v1

    .end local v10    # "norLast":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    .local v4, "norLast":[Lorg/aospextended/screenshot/longshot/transform/Complex;
    move-object v5, v11

    move/from16 v11, v28

    .end local v11    # "pCurr":[D
    .local v5, "pCurr":[D
    move-object/from16 v30, v12

    move v12, v9

    .end local v12    # "pLast":[D
    .local v30, "pLast":[D
    move-object/from16 v31, v13

    move/from16 v13, v27

    .end local v13    # "fft":Lorg/aospextended/screenshot/longshot/transform/FFT;
    .local v31, "fft":Lorg/aospextended/screenshot/longshot/transform/FFT;
    move/from16 v32, v14

    move-object/from16 v14, v29

    .end local v14    # "hSize":I
    .local v32, "hSize":I
    move/from16 v33, v15

    move-object v15, v0

    .end local v15    # "wSize":I
    .local v33, "wSize":I
    move/from16 v17, v2

    move/from16 v18, v20

    move-object/from16 v19, v3

    invoke-virtual/range {v10 .. v19}, Lorg/aospextended/screenshot/longshot/match/MatchData;->init(III[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;[Lorg/aospextended/screenshot/longshot/bitmap/Pixels;ZIILorg/aospextended/screenshot/longshot/dump/BitmapDumper;)V

    .line 93
    return-object v1
.end method
