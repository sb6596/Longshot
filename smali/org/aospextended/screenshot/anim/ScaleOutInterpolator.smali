.class public Lorg/aospextended/screenshot/anim/ScaleOutInterpolator;
.super Lorg/aospextended/screenshot/anim/FactorLinearInterpolator;
.source "ScaleOutInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleOutInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/anim/FactorLinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "x"    # F

    .line 23
    invoke-super {p0, p1}, Lorg/aospextended/screenshot/anim/FactorLinearInterpolator;->getInterpolation(F)F

    move-result v0

    const v1, 0x3f27ef9e    # 0.656f

    add-float/2addr v1, v0

    return v1
.end method
