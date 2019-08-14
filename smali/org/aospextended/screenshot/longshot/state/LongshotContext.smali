.class public interface abstract Lorg/aospextended/screenshot/longshot/state/LongshotContext;
.super Ljava/lang/Object;
.source "LongshotContext.java"


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayHeight()I
.end method

.method public abstract getDisplayMetrics()Landroid/util/DisplayMetrics;
.end method

.method public abstract getFirstCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getImageCache()Lorg/aospextended/screenshot/longshot/cache/ImageCache;
.end method

.method public abstract getIndex()I
.end method

.method public abstract getJoinCache()Lorg/aospextended/screenshot/longshot/cache/JoinCache;
.end method

.method public abstract getNavBarHeight()I
.end method

.method public abstract getRealDisplayHeight()I
.end method

.method public abstract getRunnableCache()Lorg/aospextended/screenshot/longshot/cache/RunnableCache;
.end method

.method public abstract getScrollViewTop()I
.end method

.method public abstract getSharedPrefs()Lorg/aospextended/screenshot/util/SharedPrefs;
.end method

.method public abstract hide()V
.end method

.method public abstract isFirst()Z
.end method

.method public abstract isLast()Z
.end method

.method public abstract isOverScroll()Z
.end method

.method public abstract isScroll()Z
.end method

.method public abstract notifyMove()V
.end method

.method public abstract setFirst(Z)V
.end method

.method public abstract setLast(Z)V
.end method

.method public abstract setOverScroll(Z)V
.end method

.method public abstract setScroll(Z)V
.end method

.method public abstract setScrollViewTop(I)V
.end method

.method public abstract show(IILorg/aospextended/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
.end method

.method public abstract stop()V
.end method

.method public abstract updateIndex(I)V
.end method

.method public abstract updateState(Lorg/aospextended/screenshot/longshot/state/LongshotState;Lorg/aospextended/screenshot/longshot/state/LongshotAction$OnStateListener;)V
.end method
