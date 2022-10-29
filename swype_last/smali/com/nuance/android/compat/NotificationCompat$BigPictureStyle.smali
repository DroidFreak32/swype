.class public Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;
.super Lcom/nuance/android/compat/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field mBigLargeIcon:Landroid/graphics/Bitmap;

.field mBigLargeIconSet:Z

.field mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 631
    return-void
.end method

.method public constructor <init>(Lcom/nuance/android/compat/NotificationCompat$Builder;)V
    .registers 2
    .param p1, "builder"    # Lcom/nuance/android/compat/NotificationCompat$Builder;

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 634
    invoke-virtual {p0, p1}, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->setBuilder(Lcom/nuance/android/compat/NotificationCompat$Builder;)V

    .line 635
    return-void
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z

    .line 669
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;
    .registers 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 660
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 643
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/android/compat/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z

    .line 652
    return-object p0
.end method
