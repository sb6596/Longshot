.class public final enum Lorg/aospextended/screenshot/statistics/EventStatistics$Action;
.super Ljava/lang/Enum;
.source "EventStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/statistics/EventStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/aospextended/screenshot/statistics/EventStatistics$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_EDIT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_MAIN:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_NEXT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_PREV:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

.field public static final enum CLICK_SAVE:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

.field public static final enum DRAG_EDIT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 98
    new-instance v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    const-string v1, "CLICK_PREV"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_PREV:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    .line 99
    new-instance v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    const-string v1, "CLICK_NEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_NEXT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    .line 100
    new-instance v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    const-string v1, "CLICK_EDIT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_EDIT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    .line 101
    new-instance v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    const-string v1, "CLICK_SAVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_SAVE:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    .line 102
    new-instance v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    const-string v1, "CLICK_MAIN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_MAIN:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    .line 103
    new-instance v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    const-string v1, "DRAG_EDIT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    sget-object v1, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_PREV:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_NEXT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v3

    sget-object v1, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_EDIT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v4

    sget-object v1, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_SAVE:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v5

    sget-object v1, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->CLICK_MAIN:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v6

    sget-object v1, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->DRAG_EDIT:Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    aput-object v1, v0, v7

    sput-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->$VALUES:[Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/aospextended/screenshot/statistics/EventStatistics$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 96
    const-class v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    return-object v0
.end method

.method public static values()[Lorg/aospextended/screenshot/statistics/EventStatistics$Action;
    .locals 1

    .line 96
    sget-object v0, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->$VALUES:[Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    invoke-virtual {v0}, [Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/aospextended/screenshot/statistics/EventStatistics$Action;

    return-object v0
.end method


# virtual methods
.method public valueOf()I
    .locals 2

    .line 106
    invoke-virtual {p0}, Lorg/aospextended/screenshot/statistics/EventStatistics$Action;->ordinal()I

    move-result v0

    invoke-static {}, Lorg/aospextended/screenshot/statistics/EventStatistics;->access$000()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lorg/aospextended/screenshot/statistics/EventStatistics$Base;->ACTION:Lorg/aospextended/screenshot/statistics/EventStatistics$Base;

    invoke-virtual {v1}, Lorg/aospextended/screenshot/statistics/EventStatistics$Base;->valueOf()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
