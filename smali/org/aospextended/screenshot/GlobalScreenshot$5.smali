.class Lorg/aospextended/screenshot/GlobalScreenshot$5;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 1233
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$5;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1236
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$5;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$900(Lorg/aospextended/screenshot/GlobalScreenshot;)V

    .line 1237
    return-void
.end method
