.class public Lorg/aospextended/screenshot/longshot/state/LongshotMode$MyHandler;
.super Landroid/os/Handler;
.source "LongshotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/state/LongshotMode;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotMode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    .line 108
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    .line 113
    .local v0, "action":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "resion":Ljava/lang/String;
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lorg/aospextended/screenshot/longshot/state/LongshotMode;

    invoke-virtual {v2, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotMode;->handleReject(Ljava/lang/String;)V

    .line 119
    .end local v1    # "resion":Ljava/lang/String;
    :goto_0
    return-void
.end method
