.class public Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
.super Lcom/nuance/android/compat/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 698
    return-void
.end method

.method public constructor <init>(Lcom/nuance/android/compat/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/nuance/android/compat/NotificationCompat$Builder;

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 701
    invoke-virtual {p0, p1}, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->setBuilder(Lcom/nuance/android/compat/NotificationCompat$Builder;)V

    .line 702
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 728
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 710
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 719
    return-object p0
.end method
