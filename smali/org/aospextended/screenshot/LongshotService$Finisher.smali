.class Lorg/aospextended/screenshot/LongshotService$Finisher;
.super Ljava/lang/Object;
.source "LongshotService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/LongshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finisher"
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

.field final synthetic this$0:Lorg/aospextended/screenshot/LongshotService;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/LongshotService;Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 140
    iput-object p1, p0, Lorg/aospextended/screenshot/LongshotService$Finisher;->this$0:Lorg/aospextended/screenshot/LongshotService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/aospextended/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 141
    iput-object p2, p0, Lorg/aospextended/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 142
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    :try_start_0
    invoke-static {}, Lorg/aospextended/screenshot/LongshotService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finisher.run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lorg/aospextended/screenshot/LongshotService$Finisher;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v0}, Lcom/oneplus/longshot/ILongScreenshotCallback;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
