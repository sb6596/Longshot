.class Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/cache/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapHolder"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/cache/BitmapCache;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/aospextended/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "offset"    # I
    .param p4, "height"    # I

    .line 121
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;->this$0:Lorg/aospextended/screenshot/longshot/cache/BitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p4, p1, :cond_0

    .line 123
    iput-object p2, p0, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 125
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p2, p1, p3, v0, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 127
    :goto_0
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/longshot/cache/BitmapCache$BitmapHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    return-void
.end method
