.class public Lorg/aospextended/screenshot/longshot/state/ShotLastState;
.super Lorg/aospextended/screenshot/longshot/state/ShotNextState;
.source "ShotLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.ShotLastState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;
    .param p2, "movePoint"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 11
    invoke-direct {p0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/ShotNextState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 12
    sget v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_STITCH_LAST:I

    packed-switch v0, :pswitch_data_0

    .line 26
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mOffset:I

    goto :goto_0

    .line 14
    :pswitch_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_5:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 15
    goto :goto_0

    .line 17
    :pswitch_1
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_4:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 18
    goto :goto_0

    .line 20
    :pswitch_2
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_3:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 21
    goto :goto_0

    .line 23
    :pswitch_3
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_SHOT_LAST_LEVEL_2:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mOffset:I

    .line 24
    nop

    .line 29
    :goto_0
    sget v0, Lorg/aospextended/screenshot/longshot/util/Configs;->LEVEL_DELAY:I

    packed-switch v0, :pswitch_data_1

    .line 38
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_1:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    goto :goto_1

    .line 32
    :pswitch_4
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_3:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    .line 33
    goto :goto_1

    .line 35
    :pswitch_5
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->CAPTURE_LAST_DELAY_2:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/ShotLastState;->mCaptureDelay:I

    .line 36
    nop

    .line 41
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected getNextState()Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 48
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-object v0
.end method
