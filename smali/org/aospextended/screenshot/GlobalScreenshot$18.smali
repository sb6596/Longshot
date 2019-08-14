.class Lorg/aospextended/screenshot/GlobalScreenshot$18;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 1692
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$18;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$18;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1695
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$18;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$18;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$2700(Lorg/aospextended/screenshot/GlobalScreenshot;Landroid/content/Context;)V

    .line 1696
    return-void
.end method
