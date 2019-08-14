.class public Lorg/aospextended/screenshot/longshot/state/ShotOneState;
.super Lorg/aospextended/screenshot/longshot/state/ShotNextState;
.source "ShotOneState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotOneState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 13
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/ShotNextState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected getNextState()Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 21
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
