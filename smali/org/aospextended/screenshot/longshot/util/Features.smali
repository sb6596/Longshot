.class public final enum Lorg/aospextended/screenshot/longshot/util/Features;
.super Ljava/lang/Enum;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/aospextended/screenshot/longshot/util/Features;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/aospextended/screenshot/longshot/util/Features;

.field public static final enum FULLSCREEN_IMAGE:Lorg/aospextended/screenshot/longshot/util/Features;

.field public static final enum SHOW_CUT_ANIMATION:Lorg/aospextended/screenshot/longshot/util/Features;

.field public static final enum SHOW_JOIN_ERROR:Lorg/aospextended/screenshot/longshot/util/Features;

.field public static final enum SHOW_REACH_BOTTOM:Lorg/aospextended/screenshot/longshot/util/Features;

.field public static final enum SHOW_SHOT_EFFECT:Lorg/aospextended/screenshot/longshot/util/Features;

.field public static final enum SHOW_UNSUPPORTED:Lorg/aospextended/screenshot/longshot/util/Features;


# instance fields
.field private mIsDebug:Z

.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lorg/aospextended/screenshot/longshot/util/Features;

    const-string v1, "SHOW_REACH_BOTTOM"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/aospextended/screenshot/longshot/util/Features;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_REACH_BOTTOM:Lorg/aospextended/screenshot/longshot/util/Features;

    .line 13
    new-instance v0, Lorg/aospextended/screenshot/longshot/util/Features;

    const-string v1, "FULLSCREEN_IMAGE"

    invoke-direct {v0, v1, v2, v3, v2}, Lorg/aospextended/screenshot/longshot/util/Features;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->FULLSCREEN_IMAGE:Lorg/aospextended/screenshot/longshot/util/Features;

    .line 18
    new-instance v0, Lorg/aospextended/screenshot/longshot/util/Features;

    const-string v1, "SHOW_CUT_ANIMATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v3}, Lorg/aospextended/screenshot/longshot/util/Features;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_CUT_ANIMATION:Lorg/aospextended/screenshot/longshot/util/Features;

    .line 23
    new-instance v0, Lorg/aospextended/screenshot/longshot/util/Features;

    const-string v1, "SHOW_UNSUPPORTED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3, v3}, Lorg/aospextended/screenshot/longshot/util/Features;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_UNSUPPORTED:Lorg/aospextended/screenshot/longshot/util/Features;

    .line 24
    new-instance v0, Lorg/aospextended/screenshot/longshot/util/Features;

    const-string v1, "SHOW_SHOT_EFFECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3, v3}, Lorg/aospextended/screenshot/longshot/util/Features;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_SHOT_EFFECT:Lorg/aospextended/screenshot/longshot/util/Features;

    .line 29
    new-instance v0, Lorg/aospextended/screenshot/longshot/util/Features;

    const-string v1, "SHOW_JOIN_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/aospextended/screenshot/longshot/util/Features;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lorg/aospextended/screenshot/longshot/util/Features;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/aospextended/screenshot/longshot/util/Features;

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_REACH_BOTTOM:Lorg/aospextended/screenshot/longshot/util/Features;

    aput-object v1, v0, v3

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Features;->FULLSCREEN_IMAGE:Lorg/aospextended/screenshot/longshot/util/Features;

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_CUT_ANIMATION:Lorg/aospextended/screenshot/longshot/util/Features;

    aput-object v1, v0, v4

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_UNSUPPORTED:Lorg/aospextended/screenshot/longshot/util/Features;

    aput-object v1, v0, v5

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_SHOT_EFFECT:Lorg/aospextended/screenshot/longshot/util/Features;

    aput-object v1, v0, v6

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lorg/aospextended/screenshot/longshot/util/Features;

    aput-object v1, v0, v7

    sput-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->$VALUES:[Lorg/aospextended/screenshot/longshot/util/Features;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "isDebug"    # Z
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/util/Features;->mIsDebug:Z

    .line 35
    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/util/Features;->mValue:Z

    .line 41
    iput-boolean p3, p0, Lorg/aospextended/screenshot/longshot/util/Features;->mIsDebug:Z

    .line 42
    iput-boolean p4, p0, Lorg/aospextended/screenshot/longshot/util/Features;->mValue:Z

    .line 43
    return-void
.end method

.method public static load(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    invoke-static {p0}, Lorg/aospextended/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lorg/aospextended/screenshot/longshot/util/Features;->values()[Lorg/aospextended/screenshot/longshot/util/Features;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 51
    .local v4, "feature":Lorg/aospextended/screenshot/longshot/util/Features;
    iget-boolean v5, v4, Lorg/aospextended/screenshot/longshot/util/Features;->mIsDebug:Z

    if-eqz v5, :cond_0

    .line 52
    iput-boolean v2, v4, Lorg/aospextended/screenshot/longshot/util/Features;->mValue:Z

    .line 50
    .end local v4    # "feature":Lorg/aospextended/screenshot/longshot/util/Features;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/aospextended/screenshot/longshot/util/Features;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lorg/aospextended/screenshot/longshot/util/Features;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/aospextended/screenshot/longshot/util/Features;

    return-object v0
.end method

.method public static values()[Lorg/aospextended/screenshot/longshot/util/Features;
    .locals 1

    .line 7
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->$VALUES:[Lorg/aospextended/screenshot/longshot/util/Features;

    invoke-virtual {v0}, [Lorg/aospextended/screenshot/longshot/util/Features;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/aospextended/screenshot/longshot/util/Features;

    return-object v0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/aospextended/screenshot/longshot/util/Features;->mValue:Z

    return v0
.end method
