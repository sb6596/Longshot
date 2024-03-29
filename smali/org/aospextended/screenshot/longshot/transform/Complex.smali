.class public Lorg/aospextended/screenshot/longshot/transform/Complex;
.super Ljava/lang/Object;
.source "Complex.java"


# instance fields
.field private mImag:D

.field private mReal:D


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .param p1, "real"    # D

    .line 9
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/aospextended/screenshot/longshot/transform/Complex;-><init>(DD)V

    .line 10
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 2
    .param p1, "real"    # D
    .param p3, "imag"    # D

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    .line 6
    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    .line 13
    iput-wide p1, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    .line 14
    iput-wide p3, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    .line 15
    return-void
.end method


# virtual methods
.method public clone()Lorg/aospextended/screenshot/longshot/transform/Complex;
    .locals 5

    .line 19
    new-instance v0, Lorg/aospextended/screenshot/longshot/transform/Complex;

    iget-wide v1, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v3, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/aospextended/screenshot/longshot/transform/Complex;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/transform/Complex;->clone()Lorg/aospextended/screenshot/longshot/transform/Complex;

    move-result-object v0

    return-object v0
.end method

.method public conjugate()Lorg/aospextended/screenshot/longshot/transform/Complex;
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    .line 55
    return-object p0
.end method

.method public divide(D)Lorg/aospextended/screenshot/longshot/transform/Complex;
    .locals 2
    .param p1, "v"    # D

    .line 49
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    .line 50
    return-object p0
.end method

.method public getImag()D
    .locals 2

    .line 27
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    return-wide v0
.end method

.method public minus(Lorg/aospextended/screenshot/longshot/transform/Complex;)Lorg/aospextended/screenshot/longshot/transform/Complex;
    .locals 4
    .param p1, "v"    # Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 37
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    .line 38
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v2, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    .line 39
    return-object p0
.end method

.method public multiply(Lorg/aospextended/screenshot/longshot/transform/Complex;)Lorg/aospextended/screenshot/longshot/transform/Complex;
    .locals 6
    .param p1, "v"    # Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 43
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v4, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    .line 44
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v4, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    .line 45
    return-object p0
.end method

.method public plus(Lorg/aospextended/screenshot/longshot/transform/Complex;)Lorg/aospextended/screenshot/longshot/transform/Complex;
    .locals 4
    .param p1, "v"    # Lorg/aospextended/screenshot/longshot/transform/Complex;

    .line 31
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    iget-wide v2, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mReal:D

    .line 32
    iget-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    iget-wide v2, p1, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/aospextended/screenshot/longshot/transform/Complex;->mImag:D

    .line 33
    return-object p0
.end method
