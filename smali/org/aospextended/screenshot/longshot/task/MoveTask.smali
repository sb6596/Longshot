.class public Lorg/aospextended/screenshot/longshot/task/MoveTask;
.super Landroid/os/AsyncTask;
.source "MoveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;,
        Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.MoveTask"

.field private static final mCheckLock:Ljava/lang/Object;


# instance fields
.field inputSource:I

.field private mCanRunTask:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenPart:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mLastScreenPart:Landroid/graphics/Bitmap;

.field private mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

.field private mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

.field private mPartScreenshotMatchTimes:I

.field mScreenInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCheckLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;
    .param p3, "point"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 39
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 40
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mInstrumentation:Landroid/app/Instrumentation;

    .line 41
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 42
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 43
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    .line 50
    new-instance v0, Lorg/aospextended/screenshot/longshot/task/MoveTask$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/aospextended/screenshot/longshot/task/MoveTask$1;-><init>(Lorg/aospextended/screenshot/longshot/task/MoveTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 280
    iput v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->inputSource:I

    .line 72
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

    .line 74
    iput-object p3, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 31
    sget-object v0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCheckLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/aospextended/screenshot/longshot/task/MoveTask;)Z
    .locals 1
    .param p0, "x0"    # Lorg/aospextended/screenshot/longshot/task/MoveTask;

    .line 31
    iget-boolean v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    return v0
.end method

.method static synthetic access$200(Lorg/aospextended/screenshot/longshot/task/MoveTask;I)V
    .locals 0
    .param p0, "x0"    # Lorg/aospextended/screenshot/longshot/task/MoveTask;
    .param p1, "x1"    # I

    .line 31
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->checkCanScrollInternal(I)V

    return-void
.end method

.method private checkCanScroll(I)V
    .locals 2
    .param p1, "count"    # I

    .line 185
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    return-void
.end method

.method private checkCanScrollInternal(I)V
    .locals 6
    .param p1, "count"    # I

    .line 189
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    .line 190
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "Longshot.MoveTask"

    const-string v1, "mLastScreenPart is already recycled, don\'t compare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 195
    :cond_0
    iget v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    .line 196
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 198
    .local v0, "compare":Z
    if-eqz v0, :cond_1

    .line 199
    const-string v1, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check overscroll:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 202
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LastScreenPart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lorg/aospextended/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    new-instance v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenPart_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lorg/aospextended/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_1
    iput v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 206
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 207
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 208
    .local v2, "info":Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    .end local v2    # "info":Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_0

    .line 210
    .end local v2    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 213
    .end local v0    # "compare":Z
    :goto_1
    nop

    .line 219
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 220
    return-void

    .line 214
    :cond_3
    iput-boolean v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 215
    return-void
.end method

.method private compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1, "targetBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compareBitmap"    # Landroid/graphics/Bitmap;

    .line 451
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    .line 452
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPartScreenshot()Landroid/graphics/Bitmap;
    .locals 7

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    const/16 v3, 0x438

    const/16 v4, 0x320

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x438

    const/16 v2, 0x12c

    const/4 v3, 0x0

    const v4, 0xf4240

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static final getSource(II)I
    .locals 1
    .param p0, "inputSource"    # I
    .param p1, "defaultSource"    # I

    .line 283
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private gettraceBitmaps()[Ljava/lang/String;
    .locals 2

    .line 389
    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->getMoveTraceBitmap()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 391
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "traceList":[Ljava/lang/String;
    return-object v1

    .line 394
    .end local v1    # "traceList":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private injectMotionEvent(IIJFFF)V
    .locals 20
    .param p1, "inputSource"    # I
    .param p2, "action"    # I
    .param p3, "when"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "pressure"    # F

    .line 354
    const/high16 v1, 0x3f800000    # 1.0f

    .line 355
    .local v1, "DEFAULT_SIZE":F
    const/4 v2, 0x0

    .line 356
    .local v2, "DEFAULT_META_STATE":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 357
    .local v3, "DEFAULT_PRECISION_X":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 358
    .local v4, "DEFAULT_PRECISION_Y":F
    const/4 v5, 0x0

    .line 359
    .local v5, "DEFAULT_EDGE_FLAGS":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v6, p3

    move/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-static/range {v6 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 362
    .local v6, "event":Landroid/view/MotionEvent;
    const/high16 v0, 0x10000000

    or-int v0, p1, v0

    invoke-virtual {v6, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 365
    const/4 v8, 0x1

    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v9, 0x2

    invoke-virtual {v0, v6, v9}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Ljava/lang/RuntimeException;
    sput-boolean v8, Lorg/aospextended/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .end local v0    # "ex":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 367
    :catch_1
    move-exception v0

    .line 368
    .local v0, "ex":Ljava/lang/SecurityException;
    sput-boolean v8, Lorg/aospextended/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .line 371
    .end local v0    # "ex":Ljava/lang/SecurityException;
    :goto_0
    nop

    .line 372
    :goto_1
    return-void
.end method

.method private static final lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "alpha"    # F

    .line 375
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private sendSwipe(III)V
    .locals 30
    .param p1, "inputSource"    # I
    .param p2, "duration"    # I
    .param p3, "keep"    # I

    move-object/from16 v8, p0

    .line 287
    const/16 v0, 0x1002

    move/from16 v1, p1

    invoke-static {v1, v0}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->getSource(II)I

    move-result v9

    .line 288
    .end local p1    # "inputSource":I
    .local v9, "inputSource":I
    if-gez p2, :cond_0

    .line 289
    const/16 v0, 0x12c

    .line 291
    .end local p2    # "duration":I
    .local v0, "duration":I
    move v10, v0

    goto :goto_0

    .end local v0    # "duration":I
    .restart local p2    # "duration":I
    :cond_0
    move/from16 v10, p2

    .end local p2    # "duration":I
    .local v10, "duration":I
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 292
    .local v11, "now":J
    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v13, v0, Lorg/aospextended/screenshot/longshot/util/MovePoint;->x:I

    .line 293
    .local v13, "x":I
    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v14, v0, Lorg/aospextended/screenshot/longshot/util/MovePoint;->y:I

    .line 296
    .local v14, "y1":I
    const/4 v2, 0x0

    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 298
    move-wide v15, v11

    .line 299
    .local v15, "startTime":J
    int-to-long v0, v10

    add-long v17, v15, v0

    .line 301
    .local v17, "endTime":J
    const/4 v0, 0x0

    .line 303
    .local v0, "count":I
    iget-object v1, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getEnd()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    move v7, v0

    .end local v0    # "count":I
    .local v1, "y2":I
    .local v7, "count":I
    :goto_1
    move v6, v1

    .line 305
    .end local v1    # "y2":I
    .local v6, "y2":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 307
    sub-long v3, v11, v15

    .line 308
    .local v3, "elapsedTime":J
    long-to-float v0, v3

    int-to-float v1, v10

    div-float v5, v0, v1

    .line 309
    .local v5, "alpha":F
    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    int-to-float v1, v14

    int-to-float v2, v6

    invoke-static {v1, v2, v5}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v13, v1}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->set(II)V

    .line 311
    cmp-long v0, v11, v17

    if-gtz v0, :cond_5

    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->canMove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    move-wide/from16 v25, v3

    move/from16 v19, v5

    move/from16 v27, v6

    move/from16 v28, v10

    move v10, v7

    goto/16 :goto_3

    .line 330
    :cond_1
    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v19

    int-to-float v1, v13

    int-to-float v0, v14

    int-to-float v2, v6

    .line 331
    invoke-static {v0, v2, v5}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->lerp(FFF)F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    .line 330
    move-object v0, v8

    move/from16 v24, v1

    move v1, v9

    const/4 v2, 0x2

    move-wide/from16 v25, v3

    move-wide/from16 v3, v19

    .end local v3    # "elapsedTime":J
    .local v25, "elapsedTime":J
    move/from16 v19, v5

    move/from16 v5, v24

    .end local v5    # "alpha":F
    .local v19, "alpha":F
    move/from16 v27, v6

    move/from16 v6, v22

    .end local v6    # "y2":I
    .local v27, "y2":I
    move/from16 v28, v10

    move v10, v7

    move/from16 v7, v23

    .end local v7    # "count":I
    .local v10, "count":I
    .local v28, "duration":I
    invoke-direct/range {v0 .. v7}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 337
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v5, v19, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr v5, v0

    int-to-float v0, v10

    cmpl-float v0, v5, v0

    if-lez v0, :cond_2

    .line 338
    invoke-direct {v8, v10}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->checkCanScroll(I)V

    .line 339
    add-int/lit8 v7, v10, 0x1

    .line 343
    .end local v10    # "count":I
    .restart local v7    # "count":I
    move v10, v7

    .end local v7    # "count":I
    .restart local v10    # "count":I
    :cond_2
    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 350
    .end local v19    # "alpha":F
    .end local v25    # "elapsedTime":J
    :cond_3
    nop

    .line 303
    move v7, v10

    move/from16 v1, v27

    move/from16 v10, v28

    goto :goto_1

    .line 344
    .restart local v19    # "alpha":F
    .restart local v25    # "elapsedTime":J
    :cond_4
    :goto_2
    const/4 v2, 0x3

    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v0, v0, Lorg/aospextended/screenshot/longshot/util/MovePoint;->y:I

    int-to-float v6, v0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 346
    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;->setOverScroll(Z)V

    .line 347
    const-string v0, "Longshot.MoveTask"

    const-string v1, "Overscroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 312
    .end local v19    # "alpha":F
    .end local v25    # "elapsedTime":J
    .end local v27    # "y2":I
    .end local v28    # "duration":I
    .restart local v3    # "elapsedTime":J
    .restart local v5    # "alpha":F
    .restart local v6    # "y2":I
    .restart local v7    # "count":I
    .local v10, "duration":I
    :cond_5
    move-wide/from16 v25, v3

    move/from16 v19, v5

    move/from16 v27, v6

    move/from16 v28, v10

    move v10, v7

    .end local v3    # "elapsedTime":J
    .end local v5    # "alpha":F
    .end local v6    # "y2":I
    .end local v7    # "count":I
    .local v10, "count":I
    .restart local v19    # "alpha":F
    .restart local v25    # "elapsedTime":J
    .restart local v27    # "y2":I
    .restart local v28    # "duration":I
    :goto_3
    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    move/from16 v7, v27

    invoke-virtual {v0, v13, v7}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->set(II)V

    .line 314
    .end local v27    # "y2":I
    .local v7, "y2":I
    const/4 v6, 0x0

    move v0, v6

    .local v0, "i":I
    :goto_4
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    move/from16 v3, p3

    if-ge v5, v3, :cond_6

    .line 315
    const/4 v2, 0x2

    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v20

    int-to-float v4, v13

    int-to-float v1, v7

    const/high16 v22, 0x3f800000    # 1.0f

    move-object v0, v8

    move/from16 v23, v1

    move v1, v9

    move/from16 v24, v4

    move-wide/from16 v3, v20

    move/from16 v20, v5

    move/from16 v5, v24

    .end local v5    # "i":I
    .local v20, "i":I
    move/from16 v6, v23

    move/from16 v29, v10

    move v10, v7

    move/from16 v7, v22

    .end local v7    # "y2":I
    .local v10, "y2":I
    .local v29, "count":I
    invoke-direct/range {v0 .. v7}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 314
    add-int/lit8 v0, v20, 0x1

    .end local v20    # "i":I
    .restart local v0    # "i":I
    move v7, v10

    move/from16 v10, v29

    const/4 v6, 0x0

    goto :goto_4

    .line 321
    .end local v0    # "i":I
    .end local v29    # "count":I
    .restart local v7    # "y2":I
    .local v10, "count":I
    :cond_6
    move/from16 v29, v10

    move v10, v7

    .end local v7    # "y2":I
    .local v10, "y2":I
    .restart local v29    # "count":I
    const/4 v0, 0x0

    iput v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mPartScreenshotMatchTimes:I

    .line 324
    const/4 v2, 0x1

    iget-object v0, v8, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->getDownTime()J

    move-result-wide v3

    int-to-float v5, v13

    int-to-float v6, v10

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, v8

    move v1, v9

    invoke-direct/range {v0 .. v7}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->injectMotionEvent(IIJFFF)V

    .line 326
    return-void
.end method

.method private storeImage(Landroid/graphics/Bitmap;Lorg/aospextended/screenshot/util/ImageInfo;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "fileInfo"    # Lorg/aospextended/screenshot/util/ImageInfo;

    .line 180
    const-string v0, "Longshot.MoveTask"

    const-string v1, "storeImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lorg/aospextended/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lorg/aospextended/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    .line 182
    return-void
.end method


# virtual methods
.method public checkTraceBitmap()V
    .locals 12

    .line 417
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->gettraceBitmaps()[Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "traceFiles":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v1, "traceBitmaps":Ljava/util/List;, "Ljava/util/List<Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 420
    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 421
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 422
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    .line 423
    new-instance v5, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    aget-object v6, v0, v3

    invoke-direct {v5, p0, v4, v6}, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;-><init>(Lorg/aospextended/screenshot/longshot/task/MoveTask;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .line 428
    .local v3, "targetBitmap":Landroid/graphics/Bitmap;
    const-string v4, ""

    .line 429
    .local v4, "targetFileName":Ljava/lang/String;
    move-object v5, v4

    move-object v4, v3

    move v3, v2

    .local v3, "i":I
    .local v4, "targetBitmap":Landroid/graphics/Bitmap;
    .local v5, "targetFileName":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 430
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v6, v6, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 431
    .local v6, "compareBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v7, v7, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lorg/aospextended/screenshot/util/ImageInfo;

    invoke-virtual {v7}, Lorg/aospextended/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "compareFileName":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 433
    move-object v4, v6

    .line 434
    move-object v5, v7

    goto :goto_2

    .line 436
    :cond_2
    invoke-direct {p0, v4, v6}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->compare(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v8

    .line 437
    .local v8, "result":Z
    const-string v9, "Longshot.MoveTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " compare targetFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " compareFileName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " result:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object v4, v6

    .line 429
    .end local v6    # "compareBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "compareFileName":Ljava/lang/String;
    .end local v8    # "result":Z
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 443
    .end local v3    # "i":I
    :cond_3
    nop

    .local v2, "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 444
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v3, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 445
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    iget-object v3, v3, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 448
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 102
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->getPartScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    .line 104
    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->setThreadPriority()V

    .line 112
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->reset()V

    .line 115
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/aospextended/screenshot/longshot/util/MovePoint;->setDownTime(J)V

    .line 116
    const-string v0, "Longshot.MoveTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to move, x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lorg/aospextended/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v3, v3, Lorg/aospextended/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .local v0, "keep":I
    iget v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->inputSource:I

    const/16 v3, 0x320

    invoke-direct {p0, v2, v3, v0}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->sendSwipe(III)V

    .line 153
    const-string v2, "Longshot.MoveTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "move up, x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lorg/aospextended/screenshot/longshot/util/MovePoint;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    iget v4, v4, Lorg/aospextended/screenshot/longshot/util/MovePoint;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v4}, Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;->isOverScroll()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1
.end method

.method getTraingBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->getStitchLastTraceBitmapFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 402
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v2, "imagefile":Ljava/io/File;
    const/4 v3, 0x0

    .line 404
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 405
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    .line 406
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "imagefile":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 407
    :catch_1
    move-exception v2

    .line 408
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 411
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 413
    :goto_1
    return-object v1
.end method

.method protected onCancelled()V
    .locals 0

    .line 260
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .line 224
    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->shouldDumpForMove()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 225
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 226
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 227
    .local v2, "info":Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    const-string v3, "Longshot.MoveTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " info.mBitmap.save:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lorg/aospextended/screenshot/util/ImageInfo;

    invoke-virtual {v5}, Lorg/aospextended/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lorg/aospextended/screenshot/util/ImageInfo;

    invoke-direct {p0, v3, v4}, Lorg/aospextended/screenshot/longshot/task/MoveTask;->storeImage(Landroid/graphics/Bitmap;Lorg/aospextended/screenshot/util/ImageInfo;)V

    goto :goto_1

    .line 231
    :cond_0
    const-string v3, "Longshot.MoveTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " info.mBitmap.isRecycled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mInfo:Lorg/aospextended/screenshot/util/ImageInfo;

    invoke-virtual {v5}, Lorg/aospextended/screenshot/util/ImageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v2    # "info":Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mListener:Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/task/MoveTask$OnMoveListener;->onMoveFinished()V

    .line 239
    :cond_2
    sget-object v0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCheckLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iput-boolean v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCanRunTask:Z

    .line 241
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    nop

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 243
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mScreenInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;

    .line 244
    .restart local v2    # "info":Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;
    iget-object v3, v2, Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    .end local v2    # "info":Lorg/aospextended/screenshot/longshot/task/MoveTask$ScreenInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mLastScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    :cond_4
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 251
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mCurrentScreenPart:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_5
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V
    .locals 0
    .param p1, "movenext"    # Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 277
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/task/MoveTask;->mMovePoint:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 278
    return-void
.end method
