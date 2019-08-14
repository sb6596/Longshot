.class public Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;
.super Lorg/aospextended/screenshot/longshot/state/AbsJoinState;
.source "StitchBgNextState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchBgNextState"


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
    .locals 4

    .line 25
    new-instance v0, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v3}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getIndex()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/aospextended/screenshot/longshot/task/StitchBgNextTask;-><init>(Lorg/aospextended/screenshot/longshot/task/JoinTask$OnJoinListener;Lorg/aospextended/screenshot/longshot/cache/JoinCache;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected getFailedText()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lorg/aospextended/screenshot/longshot/util/Features;->SHOW_JOIN_ERROR:Lorg/aospextended/screenshot/longshot/util/Features;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/util/Features;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageText()Ljava/lang/String;
    .locals 4

    .line 50
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->mJoinCache:Lorg/aospextended/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lorg/aospextended/screenshot/longshot/cache/JoinCache;->size()I

    move-result v0

    .line 51
    .local v0, "pages":I
    const-string v1, ""

    .line 53
    .local v1, "text":Ljava/lang/String;
    invoke-static {v0}, Lorg/aospextended/screenshot/longshot/util/Configs;->reachMaxPages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    invoke-interface {v2}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    :cond_0
    return-object v1
.end method

.method protected getSuccessText()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->getPageText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateIndex()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/StitchBgNextState;->mStateContext:Lorg/aospextended/screenshot/longshot/state/LongshotContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/aospextended/screenshot/longshot/state/LongshotContext;->updateIndex(I)V

    .line 44
    return-void
.end method
