.class public Lcom/nuance/android/compat/NotificationCompat$InboxStyle;
.super Lcom/nuance/android/compat/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 786
    return-void
.end method

.method public constructor <init>(Lcom/nuance/android/compat/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/nuance/android/compat/NotificationCompat$Builder;

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/nuance/android/compat/NotificationCompat$Style;-><init>()V

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 789
    invoke-virtual {p0, p1}, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->setBuilder(Lcom/nuance/android/compat/NotificationCompat$Builder;)V

    .line 790
    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$InboxStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 798
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 806
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/android/compat/NotificationCompat$InboxStyle;->mSummaryTextSet:Z

    .line 807
    return-object p0
.end method
