.class public Lorg/aospextended/screenshot/longshot/task/CaptureTask;
.super Landroid/os/AsyncTask;
.source "CaptureTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEGREE_0:I = 0x0

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x5a

.field private static final DEGREE_90:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "Longshot.CaptureTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mListener:Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRotation:I


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "listener"    # Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 32
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 33
    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mListener:Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mRotation:I

    .line 41
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mListener:Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    .line 42
    iput-object p2, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 44
    return-void
.end method

.method private getDegreesForRotation(I)I
    .locals 1
    .param p1, "value"    # I

    .line 105
    packed-switch p1, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    return v0

    .line 111
    :pswitch_0
    const/16 v0, 0x5a

    return v0

    .line 109
    :pswitch_1
    const/16 v0, 0xb4

    return v0

    .line 107
    :pswitch_2
    const/16 v0, 0x10e

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getQuality(F)I
    .locals 1
    .param p1, "size"    # F

    .line 101
    float-to-int v0, p1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 51
    invoke-static {}, Lorg/aospextended/screenshot/util/Utils;->setThreadPriority()V

    .line 52
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 53
    .local v1, "delay":J
    const-string v3, "Longshot.CaptureTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start , delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 56
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    .line 74
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v3, v0, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    .local v3, "crop":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 76
    .local v4, "width":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 77
    .local v5, "height":I
    iget v6, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mRotation:I

    invoke-static {v3, v4, v5, v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 78
    .local v6, "hwBitmap":Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, "screen":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    const-string v7, "Longshot.CaptureTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "capture done w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->doInBackground([Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 95
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .line 87
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mListener:Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Longshot.CaptureTask"

    const-string v1, "onCaptureFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->mListener:Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    invoke-interface {v0, p1}, Lorg/aospextended/screenshot/longshot/task/CaptureTask$OnCaptureListener;->onCaptureFinished(Landroid/graphics/Bitmap;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/aospextended/screenshot/longshot/task/CaptureTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
