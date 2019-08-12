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
    .line 723
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 724
    return-void
.end method

.method public constructor <init>(Lcom/nuance/android/compat/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/nuance/android/compat/NotificationCompat$Builder;

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 727
    invoke-virtual {p0, p1}, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->setBuilder(Lcom/nuance/android/compat/NotificationCompat$Builder;)V

    .line 728
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 754
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 736
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/android/compat/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 745
    return-object p0
.end method
