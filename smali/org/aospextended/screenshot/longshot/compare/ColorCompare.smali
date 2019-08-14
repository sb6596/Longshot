.class public Lorg/aospextended/screenshot/longshot/compare/ColorCompare;
.super Ljava/lang/Object;
.source "ColorCompare.java"

# interfaces
.implements Lorg/aospextended/screenshot/longshot/compare/Comparable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorCompare"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "error":I
    sget v1, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_ERROR:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 23
    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Configs;->PIXEL_ERROR_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    goto :goto_0

    .line 20
    :cond_0
    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Configs;->PIXEL_ERROR_2:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    .line 21
    nop

    .line 26
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    .line 27
    return v2

    .line 29
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_2

    .line 30
    return v2

    .line 32
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v0, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    const/4 v1, 0x1

    return v1
.end method
