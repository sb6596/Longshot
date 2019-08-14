.class Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;
.super Ljava/lang/Object;
.source "AbsShotState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/longshot/state/AbsShotState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearDecorForegroundRunnable"
.end annotation


# instance fields
.field private mDecor:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;


# direct methods
.method public constructor <init>(Lorg/aospextended/screenshot/longshot/state/AbsShotState;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p2, "decor"    # Landroid/widget/FrameLayout;

    .line 157
    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->mDecor:Landroid/widget/FrameLayout;

    .line 158
    iput-object p2, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->mDecor:Landroid/widget/FrameLayout;

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->this$0:Lorg/aospextended/screenshot/longshot/state/AbsShotState;

    iget-object v1, p0, Lorg/aospextended/screenshot/longshot/state/AbsShotState$ClearDecorForegroundRunnable;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lorg/aospextended/screenshot/longshot/state/AbsShotState;->clearDecorForeground(Landroid/widget/FrameLayout;)V

    .line 164
    return-void
.end method
