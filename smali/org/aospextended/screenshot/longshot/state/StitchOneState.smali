.class public Lorg/aospextended/screenshot/longshot/state/StitchOneState;
.super Lorg/aospextended/screenshot/longshot/state/StitchOverState;
.source "StitchOneState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOneState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    .line 14
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/StitchOverState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lorg/aospextended/screenshot/longshot/task/JoinTask;
    .locals 4

    .line 22
    new-instance v0, Lorg/aospextended/screenshot/longshot/task/StitchOneTask;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/StitchOneState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/StitchOneState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/StitchOneState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/aospextended/screenshot/longshot/task/StitchOneTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-object v0
.end method
