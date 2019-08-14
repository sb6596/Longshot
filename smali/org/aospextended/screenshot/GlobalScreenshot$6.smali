.class Lorg/aospextended/screenshot/GlobalScreenshot$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


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

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/aospextended/screenshot/GlobalScreenshot;

    .line 1264
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1269
    sget-boolean v0, Lorg/aospextended/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_0

    return-void

    .line 1271
    :cond_0
    const-string v0, "Longshot.GlobalScreenshot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd, save:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1000(Lorg/aospextended/screenshot/GlobalScreenshot;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", notRecycle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1100(Lorg/aospextended/screenshot/GlobalScreenshot;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1200(Lorg/aospextended/screenshot/GlobalScreenshot;)V

    .line 1279
    const/4 v0, 0x0

    sput-boolean v0, Lorg/aospextended/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 1281
    sget-boolean v1, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_WITH_ISSUE_REPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1000(Lorg/aospextended/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1282
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1300(Lorg/aospextended/screenshot/GlobalScreenshot;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1400(Lorg/aospextended/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    .line 1285
    :cond_1
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$700(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$600(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1290
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1500(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1292
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1600(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1500(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1293
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1, v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1502(Lorg/aospextended/screenshot/GlobalScreenshot;Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;)Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;

    .line 1299
    :cond_2
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$600(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1300
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$600(Lorg/aospextended/screenshot/GlobalScreenshot;)Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/aospextended/screenshot/longshot/app/GlobalScreenShotFrameLayout;->unregisterKeyEventCallBack()V

    .line 1305
    :cond_3
    sget-boolean v1, Lorg/aospextended/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v1, :cond_4

    .line 1306
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1310
    :cond_4
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1100(Lorg/aospextended/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1000(Lorg/aospextended/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1700(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1311
    const-string v1, "Longshot.GlobalScreenshot"

    const-string v3, "recycle when end 2"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1700(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1314
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1, v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1702(Lorg/aospextended/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1317
    :cond_5
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1, v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1102(Lorg/aospextended/screenshot/GlobalScreenshot;Z)Z

    .line 1318
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1, v0}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1002(Lorg/aospextended/screenshot/GlobalScreenshot;Z)Z

    .line 1320
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$1800(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1322
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$200(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1323
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$100(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1324
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$400(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1325
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$6;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$300(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1327
    return-void
.end method
