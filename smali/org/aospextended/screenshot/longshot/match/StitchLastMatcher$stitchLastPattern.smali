.class Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;
.super Ljava/lang/Object;
.source "StitchLastMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "stitchLastPattern"
.end annotation


# instance fields
.field mChecked:Z

.field mIndex:I

.field mPixels:Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

.field mRepeatCount:I

.field mSimilarity:I

.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;ILorg/aospextended/screenshot/longshot/bitmap/Pixels;)V
    .locals 1
    .param p2, "index"    # I
    .param p3, "pixel"    # Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 489
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->this$0:Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 p1, 0x0

    iput p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mIndex:I

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mPixels:Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 485
    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mChecked:Z

    .line 486
    iput p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mSimilarity:I

    .line 487
    iput p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mRepeatCount:I

    .line 490
    iput p2, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mIndex:I

    .line 491
    iput-object p3, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mPixels:Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    .line 492
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mChecked:Z

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 495
    iget v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mIndex:I

    return v0
.end method

.method public getPixels()Lorg/aospextended/screenshot/longshot/bitmap/Pixels;
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mPixels:Lorg/aospextended/screenshot/longshot/bitmap/Pixels;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 523
    iget v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mRepeatCount:I

    return v0
.end method

.method public getSimilarity()I
    .locals 1

    .line 507
    iget v0, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mSimilarity:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 511
    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mChecked:Z

    .line 512
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .line 519
    iput p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mRepeatCount:I

    .line 520
    return-void
.end method

.method public setSimilarity(I)V
    .locals 0
    .param p1, "similarity"    # I

    .line 503
    iput p1, p0, Lorg/aospextended/screenshot/longshot/match/StitchLastMatcher$stitchLastPattern;->mSimilarity:I

    .line 504
    return-void
.end method
