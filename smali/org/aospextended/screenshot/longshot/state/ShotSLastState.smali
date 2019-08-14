.class public Lorg/aospextended/screenshot/longshot/state/ShotSLastState;
.super Lorg/aospextended/screenshot/longshot/state/ShotLastState;
.source "ShotSLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotSLastState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/ShotLastState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 15
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_SLAST:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotSLastState;->mOffset:I

    .line 16
    return-void
.end method


# virtual methods
.method protected getNextState()Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 23
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
