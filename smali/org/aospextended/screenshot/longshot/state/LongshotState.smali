.class public final enum Lorg/aospextended/screenshot/longshot/state/LongshotState;
.super Ljava/lang/Enum;
.source "LongshotState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/aospextended/screenshot/longshot/state/LongshotState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum EDIT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum IDLE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum MAIN:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum MOVE_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum MOVE_PREV:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SAVE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_PREV:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum SHOT_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum STITCH_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum UNDO:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field public static final enum UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;


# instance fields
.field private mState:Lorg/aospextended/screenshot/longshot/state/BaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 7
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->IDLE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 8
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "UNSUPPORTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 9
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "MAIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MAIN:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 10
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "EDIT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->EDIT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 11
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SAVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SAVE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 12
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "MOVE_NEXT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 13
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "MOVE_PREV"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MOVE_PREV:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 14
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_FIRST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 15
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_BGNEXT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 16
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_BGOVER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 17
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_NEXT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 18
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_OVER"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 19
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_LAST"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 20
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_SLAST"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 21
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_ONE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 22
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "SHOT_PREV"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_PREV:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 23
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_BGNEXT"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 24
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_BGOVER"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 25
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_NEXT"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 26
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_OVER"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 27
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_LAST"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 28
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_SLAST"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 29
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "STITCH_ONE"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 30
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const-string v1, "UNDO"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lorg/aospextended/screenshot/longshot/state/LongshotState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNDO:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 5
    const/16 v0, 0x18

    new-array v0, v0, [Lorg/aospextended/screenshot/longshot/state/LongshotState;

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->IDLE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MAIN:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->EDIT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SAVE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MOVE_PREV:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v8

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v9

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v10

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v11

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v12

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v13

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    aput-object v1, v0, v14

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_PREV:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNDO:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->$VALUES:[Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->mState:Lorg/aospextended/screenshot/longshot/state/BaseState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 5
    const-class v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

.method public static values()[Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .locals 1

    .line 5
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->$VALUES:[Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, [Lorg/aospextended/screenshot/longshot/state/LongshotState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/aospextended/screenshot/longshot/state/LongshotState;

    return-object v0
.end method


# virtual methods
.method public enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 1
    .param p1, "oldState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 49
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->mState:Lorg/aospextended/screenshot/longshot/state/BaseState;

    invoke-virtual {v0, p1, p2}, Lorg/aospextended/screenshot/longshot/state/BaseState;->enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 50
    return-void
.end method

.method public exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V
    .locals 1
    .param p1, "newState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 53
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->mState:Lorg/aospextended/screenshot/longshot/state/BaseState;

    invoke-virtual {v0, p1}, Lorg/aospextended/screenshot/longshot/state/BaseState;->exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V

    .line 54
    return-void
.end method

.method public get()Lorg/aospextended/screenshot/longshot/state/BaseState;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->mState:Lorg/aospextended/screenshot/longshot/state/BaseState;

    return-object v0
.end method

.method public init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V
    .locals 0
    .param p1, "state"    # Lorg/aospextended/screenshot/longshot/state/BaseState;

    .line 57
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->mState:Lorg/aospextended/screenshot/longshot/state/BaseState;

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->mState:Lorg/aospextended/screenshot/longshot/state/BaseState;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/BaseState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 1
    .param p1, "point"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 65
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->mState:Lorg/aospextended/screenshot/longshot/state/BaseState;

    invoke-virtual {v0, p1}, Lorg/aospextended/screenshot/longshot/state/BaseState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 66
    return-void
.end method
