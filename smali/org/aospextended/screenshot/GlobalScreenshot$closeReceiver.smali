.class Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/aospextended/screenshot/GlobalScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "closeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/aospextended/screenshot/GlobalScreenshot;


# direct methods
.method private constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/aospextended/screenshot/GlobalScreenshot;Lorg/aospextended/screenshot/GlobalScreenshot$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/aospextended/screenshot/GlobalScreenshot;
    .param p2, "x1"    # Lorg/aospextended/screenshot/GlobalScreenshot$1;

    .line 828
    invoke-direct {p0, p1}, Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;-><init>(Lorg/aospextended/screenshot/GlobalScreenshot;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 830
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 838
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 840
    iget-object v2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$000(Lorg/aospextended/screenshot/GlobalScreenshot;)V

    .line 842
    iget-object v2, p0, Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$100(Lorg/aospextended/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .end local v1    # "state":Ljava/lang/String;
    goto :goto_1

    .line 834
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/aospextended/screenshot/GlobalScreenshot$closeReceiver;->this$0:Lorg/aospextended/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lorg/aospextended/screenshot/GlobalScreenshot;->access$000(Lorg/aospextended/screenshot/GlobalScreenshot;)V

    .line 847
    :cond_2
    :goto_1
    return-void
.end method
