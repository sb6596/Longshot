.class public Lorg/aospextended/screenshot/longshot/state/LongshotMode;
.super Ljava/lang/Object;
.source "LongshotMode.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lorg/aospextended/screenshot/longshot/state/LongshotContext;
.implements Lorg/aospextended/screenshot/longshot/app/LongshotDialog$OnDismissListener;
.implements Lorg/aospextended/screenshot/longshot/app/LongshotDialog$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/longshot/state/LongshotMode$MoveNext;,
        Lorg/aospextended/screenshot/longshot/state/LongshotMode$MyHandler;
    }
.end annotation


# static fields
.field private static final DIM_AMOUNT:F = 0.0f

.field private static final MSG_HANDLE_REJECT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Longshot.LongshotMode"

.field public static final UNSUPPORT_REASON_COLOSE_SYSDIALOG:I = 0x7d0

.field public static final UNSUPPORT_REASON_RINGING:I = 0x3e8

.field private static sInstance:Lorg/aospextended/screenshot/longshot/state/LongshotMode;


# instance fields
.field private mCallback:Lcom/android/internal/custom/longshot/ILongScreenshotCallback;

.field private mCheckThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

.field private mCompareCache:Lorg/aospextended/screenshot/longshot/cache/CompareCache;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

.field private mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mFinisher:Ljava/lang/Runnable;

.field private mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

.field private mGcThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

.field private mHandler:Landroid/os/Handler;

.field private mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

.field private mIndex:I

.field private mIsFirst:Z

.field private mIsLast:Z

.field private mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

.field private mMoveDistance:I

.field private mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

.field private mNavigationbarHeight:I

.field private mOverScroll:Z

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

.field private mScroll:Z

.field private mSharedPrefs:Lorg/aospextended/screenshot/util/SharedPrefs;

.field private mStatusbarHeight:I

.field mTargetViewTop:I

.field private mUnsupportReason:I

.field private mWindowFrame:Landroid/graphics/Rect;

.field private onUnscrollable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->sInstance:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    .line 73
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    .line 75
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    .line 76
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    .line 78
    new-instance v1, Lorg/aospextended/screenshot/longshot/state/LongshotMode$MyHandler;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode$MyHandler;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotMode;)V

    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 81
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/android/internal/custom/longshot/ILongScreenshotCallback;

    .line 82
    sget-object v2, Lorg/aospextended/screenshot/longshot/state/LongshotState;->IDLE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iput-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 83
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    .line 84
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 85
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mGcThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    .line 86
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCheckThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    .line 87
    new-instance v2, Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-direct {v2}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 88
    new-instance v2, Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-direct {v2}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    .line 89
    new-instance v2, Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-direct {v2}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;-><init>()V

    iput-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    .line 90
    new-instance v2, Lorg/aospextended/screenshot/longshot/cache/CompareCache;

    invoke-direct {v2}, Lorg/aospextended/screenshot/longshot/cache/CompareCache;-><init>()V

    iput-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCompareCache:Lorg/aospextended/screenshot/longshot/cache/CompareCache;

    .line 91
    new-instance v2, Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lorg/aospextended/screenshot/longshot/cache/RunnableCache;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    .line 92
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lorg/aospextended/screenshot/util/SharedPrefs;

    .line 93
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 94
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 95
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 96
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveDistance:I

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 98
    iput-boolean v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 99
    iput-boolean v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 100
    iput-boolean v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 690
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    .line 728
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode$1;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode$1;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotMode;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    .line 124
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    .line 125
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->initDialog(Landroid/content/Context;)V

    .line 127
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->initSharedPrefs()V

    .line 128
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->initConfigs()V

    .line 129
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->initParams()V

    .line 130
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->initStates()V

    .line 131
    return-void
.end method

.method private getBottom(I)I
    .locals 2
    .param p1, "total"    # I

    .line 619
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_0

    .line 620
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lorg/aospextended/screenshot/longshot/util/Configs;

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_BOTTOM:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getPos(ILorg/aospextended/screenshot/longshot/util/Configs;Lorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 622
    :cond_0
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1

    .line 623
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lorg/aospextended/screenshot/longshot/util/Configs;

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_BOTTOM:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getPos(ILorg/aospextended/screenshot/longshot/util/Configs;Lorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 626
    :cond_1
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_HIGHER_LIST:Z

    if-eqz v0, :cond_2

    .line 627
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_HIGHER_BOTTOM:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getPercent(ILorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 630
    :cond_2
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_BOTTOM:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getPercent(ILorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/aospextended/screenshot/longshot/state/LongshotMode;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 137
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->sInstance:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->sInstance:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    .line 140
    :cond_0
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->sInstance:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    return-object v0
.end method

.method private getPos(ILorg/aospextended/screenshot/longshot/util/Configs;Lorg/aospextended/screenshot/longshot/util/Configs;)I
    .locals 3
    .param p1, "total"    # I
    .param p2, "height"    # Lorg/aospextended/screenshot/longshot/util/Configs;
    .param p3, "percent"    # Lorg/aospextended/screenshot/longshot/util/Configs;

    .line 598
    invoke-virtual {p2}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    .line 599
    .local v0, "value":I
    sub-int v1, p1, v0

    .line 600
    .local v1, "offset":I
    invoke-static {v0, p3}, Lorg/aospextended/screenshot/longshot/util/Configs;->getPercent(ILorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method private getTop(I)I
    .locals 2
    .param p1, "total"    # I

    .line 604
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_0

    .line 605
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lorg/aospextended/screenshot/longshot/util/Configs;

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_TOP:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getPos(ILorg/aospextended/screenshot/longshot/util/Configs;Lorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 607
    :cond_0
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1

    .line 608
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lorg/aospextended/screenshot/longshot/util/Configs;

    sget-object v1, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_TOP:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getPos(ILorg/aospextended/screenshot/longshot/util/Configs;Lorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 611
    :cond_1
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v0

    if-nez v0, :cond_2

    .line 612
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_BIG_TOP:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getPercent(ILorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    .line 615
    :cond_2
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->PERCENT_MOVE_TOP:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getPercent(ILorg/aospextended/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method private hideSoftInput()V
    .locals 3

    .line 565
    :try_start_0
    const-string v0, "input_method"

    .line 566
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 565
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    .line 567
    .local v0, "iimm":Lcom/android/internal/view/IInputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v0    # "iimm":Lcom/android/internal/view/IInputMethodManager;
    goto :goto_0

    .line 568
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Longshot.LongshotMode"

    const-string v2, "hide ime failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private initConfigs()V
    .locals 1

    .line 557
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/dump/BitmapDumper;->load(Landroid/content/Context;)V

    .line 558
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/util/Features;->load(Landroid/content/Context;)V

    .line 559
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    .line 560
    return-void
.end method

.method private initDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 482
    new-instance v0, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-direct {v0, p1}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    .line 483
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 484
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 487
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 488
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 489
    .local v1, "display":Landroid/view/Display;
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 490
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 491
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 495
    .local v2, "res":Landroid/content/res/Resources;
    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 496
    .local v3, "statusbarHeight":I
    sget-object v4, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 497
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/16 v6, 0x61

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 498
    .local v6, "windowFullScreen":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 500
    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput v5, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 503
    iget-object v5, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v5, p0}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->setOnDismissListener(Lorg/aospextended/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V

    .line 504
    return-void
.end method

.method private initNavigationBar(Z)V
    .locals 5
    .param p1, "navBarVisible"    # Z

    .line 507
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 508
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 509
    .local v1, "navigationbarHeight":I
    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 511
    const-string v2, "Longshot.LongshotMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavigationbarHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private initParams()V
    .locals 7

    .line 516
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 517
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    .line 519
    .local v1, "total":I
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x4

    .line 522
    .local v2, "x":I
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getTop(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 523
    .local v3, "top":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Point;

    iget v5, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 525
    .local v4, "bottom":Landroid/graphics/Point;
    new-instance v5, Lorg/aospextended/screenshot/longshot/state/LongshotMode$MoveNext;

    sget-object v6, Lorg/aospextended/screenshot/longshot/util/Configs;->MOVE_DISTANCE:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    invoke-direct {v5, p0, v6, v4, v3}, Lorg/aospextended/screenshot/longshot/state/LongshotMode$MoveNext;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotMode;ILandroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v5, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    .line 526
    return-void
.end method

.method private initSharedPrefs()V
    .locals 2

    .line 553
    new-instance v0, Lorg/aospextended/screenshot/util/SharedPrefs;

    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/aospextended/screenshot/util/SharedPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lorg/aospextended/screenshot/util/SharedPrefs;

    .line 554
    return-void
.end method

.method private initStates()V
    .locals 3

    .line 529
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->IDLE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/IdleState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/IdleState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 530
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/UnsupportedState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/UnsupportedState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 531
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MAIN:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/MainState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/MainState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 532
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SAVE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/SaveState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/SaveState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 533
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotFirstState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotFirstState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 534
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotBgNextState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 535
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotBgOverState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotBgOverState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 536
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotNextState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotNextState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 537
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotOverState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotOverState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 538
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotLastState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotLastState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 539
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotSLastState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotSLastState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 540
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/ShotOneState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/ShotOneState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 541
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/MoveNextState;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lorg/aospextended/screenshot/longshot/state/MoveNextState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 542
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 543
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/StitchBgOverState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/StitchBgOverState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 544
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/StitchNextState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/StitchNextState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 545
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/StitchOverState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/StitchOverState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 546
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/StitchLastState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/StitchLastState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 547
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/StitchSLastState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/StitchSLastState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 548
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/StitchOneState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/StitchOneState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 549
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNDO:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    new-instance v1, Lorg/aospextended/screenshot/longshot/state/UndoState;

    invoke-direct {v1, p0}, Lorg/aospextended/screenshot/longshot/state/UndoState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->init(Lorg/aospextended/screenshot/longshot/state/BaseState;)V

    .line 550
    return-void
.end method

.method private isFullHeight(Landroid/graphics/Rect;I)Z
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "height"    # I

    .line 584
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    sub-int v1, p2, v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFullScreenWindow(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 588
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->isFullWidth(Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    return v1

    .line 591
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->isFullHeight(Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    return v1

    .line 594
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isFullWidth(Landroid/graphics/Rect;I)Z
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "width"    # I

    .line 580
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUnsupported()Z
    .locals 1

    .line 576
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    return v0
.end method

.method private notifyToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .line 636
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, v1}, Lorg/aospextended/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 637
    return-void
.end method

.method private onDestroy()V
    .locals 4

    .line 452
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 455
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 456
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;->clear()V

    .line 457
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/ImageCache;->clear()V

    .line 458
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCompareCache:Lorg/aospextended/screenshot/longshot/cache/CompareCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/CompareCache;->clear()V

    .line 459
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->clear()V

    .line 461
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCheckThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCheckThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/task/BaseThread;->stop()V

    .line 463
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCheckThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mGcThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mGcThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/task/BaseThread;->stop()V

    .line 467
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mGcThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 471
    iput-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 474
    :cond_2
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/aospextended/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 475
    sput-boolean v3, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    .line 477
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->IDLE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V

    .line 479
    return-void
.end method

.method public static recycle()V
    .locals 2

    .line 144
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->sInstance:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "LongshotMode recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->sInstance:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .line 342
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFirstCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFirstCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 337
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mImageCache:Lorg/aospextended/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 310
    iget v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIndex:I

    return v0
.end method

.method public getJoinCache()Lorg/aospextended/screenshot/longshot/cache/JoinCache;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    .line 327
    iget v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    return v0
.end method

.method public getRealDisplayHeight()I
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getRunnableCache()Lorg/aospextended/screenshot/longshot/cache/RunnableCache;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lorg/aospextended/screenshot/longshot/cache/RunnableCache;

    return-object v0
.end method

.method public getScrollViewTop()I
    .locals 1

    .line 710
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_BIGTOP_LIST:Z

    if-eqz v0, :cond_0

    .line 711
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_BIG_TOP:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 715
    :cond_0
    sget-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LARGETOP_LIST:Z

    if-eqz v0, :cond_1

    .line 716
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Configs;->OFFSET_LARGE_TOP:Lorg/aospextended/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    .line 719
    :cond_1
    iget v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    return v0
.end method

.method public getSharedPrefs()Lorg/aospextended/screenshot/util/SharedPrefs;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lorg/aospextended/screenshot/util/SharedPrefs;

    return-object v0
.end method

.method public handleReject(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 429
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 434
    :cond_0
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 435
    return-void
.end method

.method public hide()V
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->hide()V

    .line 192
    return-void
.end method

.method public isFirst()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    return v0
.end method

.method public isHandleState()Z
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->get()Lorg/aospextended/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 445
    .local v0, "state":Lorg/aospextended/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/aospextended/screenshot/longshot/state/AbsViewState;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isLast()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    return v0
.end method

.method public isMoveState()Z
    .locals 2

    .line 439
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->get()Lorg/aospextended/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 440
    .local v0, "state":Lorg/aospextended/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lorg/aospextended/screenshot/longshot/state/AbsMoveState;

    return v1
.end method

.method public isOverScroll()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    return v0
.end method

.method public isScroll()Z
    .locals 1

    .line 300
    iget-boolean v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mScroll:Z

    return v0
.end method

.method public notifyMove()V
    .locals 1

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/android/internal/custom/longshot/ILongScreenshotCallback;

    invoke-interface {v0}, Lcom/android/internal/custom/longshot/ILongScreenshotCallback;->notifyMove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 156
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->stop()V

    .line 161
    :cond_0
    return-void
.end method

.method public onDismiss(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 372
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 375
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    .line 376
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 377
    return-void

    .line 381
    :cond_0
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    .line 382
    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    .line 383
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 384
    return-void

    .line 387
    :cond_1
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->IDLE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 388
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 389
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 167
    return-void
.end method

.method public onTouch()V
    .locals 2

    .line 393
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x1

    sput-boolean v0, Lorg/aospextended/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    .line 400
    return-void
.end method

.method public onUnscrollableView()V
    .locals 2

    .line 725
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 726
    return-void
.end method

.method public reject(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "reason"    # Ljava/lang/String;

    .line 421
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 422
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 423
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 424
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    return-void
.end method

.method public setFirst(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .line 277
    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 278
    return-void
.end method

.method public setLast(Z)V
    .locals 3
    .param p1, "isLast"    # Z

    .line 266
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 268
    return-void
.end method

.method public setOverScroll(Z)V
    .locals 3
    .param p1, "isOverScroll"    # Z

    .line 289
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverScroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 296
    return-void
.end method

.method public setScroll(Z)V
    .locals 0
    .param p1, "isScroll"    # Z

    .line 305
    iput-boolean p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 306
    return-void
.end method

.method public setScrollViewTop(I)V
    .locals 3
    .param p1, "top"    # I

    .line 692
    iget v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->isCustomizeMoveApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iput p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    .line 694
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->initParams()V

    .line 695
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setTargetViewTop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTargetViewTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 697
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 698
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 699
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 700
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 701
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 702
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 703
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 704
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mMoveNext:Lorg/aospextended/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->updateMovePoint(Lorg/aospextended/screenshot/longshot/util/MovePoint;)V

    .line 706
    :cond_0
    return-void
.end method

.method public show(IILorg/aospextended/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "layoutRes"    # I
    .param p3, "listener"    # Lorg/aospextended/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p1}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->setTitle(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    :goto_0
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p2}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->setContent(I)V

    .line 202
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p3}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->setOnShowListener(Lorg/aospextended/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 203
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->show()V

    .line 204
    return-void
.end method

.method public start(Ljava/lang/Runnable;Lcom/android/internal/custom/longshot/ILongScreenshotCallback;ZZ)V
    .locals 2
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "callback"    # Lcom/android/internal/custom/longshot/ILongScreenshotCallback;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .line 405
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 408
    iput-object p2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/android/internal/custom/longshot/ILongScreenshotCallback;

    .line 409
    invoke-direct {p0, p4}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->initNavigationBar(Z)V

    .line 410
    new-instance v0, Lorg/aospextended/screenshot/longshot/task/GcThread;

    invoke-direct {v0}, Lorg/aospextended/screenshot/longshot/task/GcThread;-><init>()V

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/task/GcThread;->start()Lorg/aospextended/screenshot/longshot/task/BaseThread;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mGcThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    .line 411
    new-instance v0, Lorg/aospextended/screenshot/longshot/task/CheckThread;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/longshot/task/CheckThread;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/task/CheckThread;->start()Lorg/aospextended/screenshot/longshot/task/BaseThread;

    move-result-object v0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCheckThread:Lorg/aospextended/screenshot/longshot/task/BaseThread;

    .line 412
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->MAIN:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 413
    .local v0, "state":Lorg/aospextended/screenshot/longshot/state/LongshotState;
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->isUnsupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    sget-object v0, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 416
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 417
    return-void
.end method

.method public stop()V
    .locals 3

    .line 180
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mDialog:Lorg/aospextended/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/app/LongshotDialog;->dismiss()V

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 187
    :goto_0
    return-void
.end method

.method public updateIndex(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 256
    iget v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 257
    return-void
.end method

.method public updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 5
    .param p1, "newState"    # Lorg/aospextended/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;

    .line 208
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    if-eq v0, p1, :cond_7

    .line 209
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 210
    .local v0, "oldState":Lorg/aospextended/screenshot/longshot/state/LongshotState;
    const-string v1, "Longshot.LongshotMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongshotMode.updateState#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 214
    sget-boolean v1, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->stop()V

    .line 216
    return-void

    .line 219
    :cond_0
    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_3

    .line 221
    const-string v1, "Longshot.LongshotMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unsupport reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 223
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    iget v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_2

    .line 227
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    .line 234
    :goto_0
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->stop()V

    .line 235
    return-void

    .line 236
    :cond_3
    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SAVE:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_4

    .line 237
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_4
    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    if-ne v0, v1, :cond_5

    .line 239
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lorg/aospextended/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v1    # "text":Ljava/lang/String;
    goto :goto_1

    :cond_5
    sget-object v1, Lorg/aospextended/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_6

    .line 243
    invoke-direct {p0}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->hideSoftInput()V

    .line 247
    :cond_6
    :goto_1
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1, p1}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->exit(Lorg/aospextended/screenshot/longshot/state/LongshotState;)V

    .line 248
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    .line 249
    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->mCurrentState:Lorg/aospextended/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1, v0, p2}, Lorg/aospextended/screenshot/longshot/state/LongshotState;->enter(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 250
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 252
    .end local v0    # "oldState":Lorg/aospextended/screenshot/longshot/state/LongshotState;
    :cond_7
    return-void
.end method
