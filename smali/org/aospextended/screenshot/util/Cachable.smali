.class public interface abstract Lorg/aospextended/screenshot/util/Cachable;
.super Ljava/lang/Object;
.source "Cachable.java"


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract getCache()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCache(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method
