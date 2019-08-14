.class public Lorg/aospextended/screenshot/service/GlobalNotification;
.super Ljava/lang/Object;
.source "GlobalNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aospextended/screenshot/service/GlobalNotification$SaveError;,
        Lorg/aospextended/screenshot/service/GlobalNotification$Builder;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "Longshot"

.field public static final SAVE_DONE:I = 0x1

.field public static final SAVE_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalNotification"

.field private static sInstance:Lorg/aospextended/screenshot/service/GlobalNotification;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lorg/aospextended/screenshot/service/GlobalNotification;->sInstance:Lorg/aospextended/screenshot/service/GlobalNotification;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 44
    iput-object p1, p0, Lorg/aospextended/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/aospextended/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/aospextended/screenshot/service/GlobalNotification;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/aospextended/screenshot/service/GlobalNotification;

    .line 17
    iget-object v0, p0, Lorg/aospextended/screenshot/service/GlobalNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createNotification(ILandroid/graphics/Bitmap;Lorg/aospextended/screenshot/util/ImageInfo;)Landroid/app/Notification;
    .locals 2
    .param p1, "type"    # I
    .param p2, "preview"    # Landroid/graphics/Bitmap;
    .param p3, "imageInfo"    # Lorg/aospextended/screenshot/util/ImageInfo;

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "builder":Lorg/aospextended/screenshot/service/GlobalNotification$Builder;
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Lorg/aospextended/screenshot/service/GlobalNotification$SaveError;

    invoke-direct {v1, p0, p2}, Lorg/aospextended/screenshot/service/GlobalNotification$SaveError;-><init>(Lorg/aospextended/screenshot/service/GlobalNotification;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 84
    nop

    .line 88
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/aospextended/screenshot/service/GlobalNotification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/aospextended/screenshot/service/GlobalNotification;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 52
    sget-object v0, Lorg/aospextended/screenshot/service/GlobalNotification;->sInstance:Lorg/aospextended/screenshot/service/GlobalNotification;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lorg/aospextended/screenshot/service/GlobalNotification;

    invoke-direct {v0, p0}, Lorg/aospextended/screenshot/service/GlobalNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/aospextended/screenshot/service/GlobalNotification;->sInstance:Lorg/aospextended/screenshot/service/GlobalNotification;

    .line 55
    :cond_0
    sget-object v0, Lorg/aospextended/screenshot/service/GlobalNotification;->sInstance:Lorg/aospextended/screenshot/service/GlobalNotification;

    return-object v0
.end method

.method public static recycle()V
    .locals 1

    .line 59
    sget-object v0, Lorg/aospextended/screenshot/service/GlobalNotification;->sInstance:Lorg/aospextended/screenshot/service/GlobalNotification;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lorg/aospextended/screenshot/service/GlobalNotification;->sInstance:Lorg/aospextended/screenshot/service/GlobalNotification;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/aospextended/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 74
    return-void
.end method

.method public notify(IILandroid/graphics/Bitmap;Lorg/aospextended/screenshot/util/ImageInfo;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "type"    # I
    .param p3, "preview"    # Landroid/graphics/Bitmap;
    .param p4, "imageInfo"    # Lorg/aospextended/screenshot/util/ImageInfo;

    .line 68
    invoke-direct {p0, p2, p3, p4}, Lorg/aospextended/screenshot/service/GlobalNotification;->createNotification(ILandroid/graphics/Bitmap;Lorg/aospextended/screenshot/util/ImageInfo;)Landroid/app/Notification;

    move-result-object v0

    .line 69
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lorg/aospextended/screenshot/service/GlobalNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "Longshot"

    invoke-virtual {v1, v2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 70
    return-void
.end method
