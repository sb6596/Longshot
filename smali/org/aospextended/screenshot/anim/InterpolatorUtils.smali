.class public Lorg/aospextended/screenshot/anim/InterpolatorUtils;
.super Ljava/lang/Object;
.source "InterpolatorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InterpolatorUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    .line 69
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 71
    .local v1, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_7

    :cond_0
    const/4 v2, 0x1

    if-eq v3, v2, :cond_7

    .line 74
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 75
    goto :goto_0

    .line 78
    :cond_1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 80
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "name":Ljava/lang/String;
    const-string v5, "factorLinearInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    new-instance v5, Lorg/aospextended/screenshot/anim/FactorLinearInterpolator;

    invoke-direct {v5, p0, v2}, Lorg/aospextended/screenshot/anim/FactorLinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 84
    :cond_2
    const-string v5, "flashInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    new-instance v5, Lorg/aospextended/screenshot/anim/FlashInterpolator;

    invoke-direct {v5, p0, v2}, Lorg/aospextended/screenshot/anim/FlashInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 86
    :cond_3
    const-string v5, "backgroundInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    new-instance v5, Lorg/aospextended/screenshot/anim/BackgroundInterpolator;

    invoke-direct {v5, p0, v2}, Lorg/aospextended/screenshot/anim/BackgroundInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 88
    :cond_4
    const-string v5, "scaleInInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    new-instance v5, Lorg/aospextended/screenshot/anim/ScaleInInterpolator;

    invoke-direct {v5, p0, v2}, Lorg/aospextended/screenshot/anim/ScaleInInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    goto :goto_1

    .line 90
    :cond_5
    const-string v5, "scaleOutInterpolator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 91
    new-instance v5, Lorg/aospextended/screenshot/anim/ScaleOutInterpolator;

    invoke-direct {v5, p0, v2}, Lorg/aospextended/screenshot/anim/ScaleOutInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v5

    .line 93
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    :goto_1
    goto :goto_0

    .line 94
    :cond_7
    return-object v0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 37
    invoke-static {p0, v0}, Lorg/aospextended/screenshot/anim/InterpolatorUtils;->createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 38
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-nez v1, :cond_0

    .line 39
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 41
    :cond_0
    nop

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 41
    :cond_1
    return-object v1

    .line 53
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 51
    throw v2

    .line 42
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 43
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 46
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    if-eqz v0, :cond_2

    .line 54
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v1
.end method
