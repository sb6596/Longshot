.class public Lorg/aospextended/screenshot/longshot/state/StitchLastState;
.super Lorg/aospextended/screenshot/longshot/state/AbsJoinState;
.source "StitchLastState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.StitchLastState"


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V
    .locals 0
    .param p1, "stateContext"    # Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    .line 17
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/longshot/state/AbsJoinState;-><init>(Lorg/aospextended/screenshot/longshot/state/LongshotContext;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected createJoinTask()Lorg/aospextended/screenshot/longshot/task/JoinTask;
    .locals 7

    .line 31
    new-instance v6, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/StitchLastState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/StitchLastState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/StitchLastState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    .line 32
    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v4

    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/StitchLastState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getDisplayHeight()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/aospextended/screenshot/longshot/task/StitchLastTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;II)V

    .line 31
    return-object v6
.end method

.method protected getFailedText()Ljava/lang/String;
    .locals 1

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 4

    .line 48
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/StitchLastState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 49
    .local v0, "pages":I
    const-string v1, ""

    .line 51
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/StitchLastState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_0
    return-object v1
.end method

.method protected updateIndex()V
    .locals 0

    .line 63
    return-void
.end method
