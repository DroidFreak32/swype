.class public Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;
.super Ljava/lang/Object;
.source "SDKDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadableLanguage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;,
        Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3

.field private static final displayLanguageCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessibilityMessage:Ljava/lang/String;

.field private currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field private downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

.field private volatile isAllowedCancel:Z

.field private language:Lcom/nuance/swype/input/InputMethods$Language;

.field private notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

.field private originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field private progress:I

.field private retryCount:I

.field private type:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$1;

    invoke-direct {v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$1;-><init>()V

    sput-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->displayLanguageCompare:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .locals 1
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "status"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .param p3, "type"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .param p4, "downloadManager"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 490
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 491
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 492
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 493
    iput-object p3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->type:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 494
    iput-object p4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 495
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$800(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 798
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 810
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 811
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 812
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 813
    new-instance v3, Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 816
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {v0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 822
    .local v2, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 823
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v4, Lcom/nuance/swype/input/R$string;->accessibility_voice_input_wait:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 829
    .end local v2    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private setNotificationIndeterminant(I)V
    .locals 4
    .param p1, "context"    # I

    .prologue
    const/4 v3, 0x0

    .line 778
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 779
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-nez v1, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->initNotification()V

    .line 782
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v1, :cond_2

    .line 783
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v1, v3, v3, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 785
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 789
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v1, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 790
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 792
    :cond_2
    return-void
.end method


# virtual methods
.method public allowedCancel()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    return v0
.end method

.method public changeOriginalStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 525
    return-void
.end method

.method public compareTo(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)I
    .locals 3
    .param p1, "another"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .prologue
    .line 499
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->displayLanguageCompare:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 448
    check-cast p1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->compareTo(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)I

    move-result v0

    return v0
.end method

.method public downloadComplete(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 709
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v0, v1, :cond_0

    .line 711
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    move v0, v6

    .line 730
    :goto_0
    return v0

    .line 714
    :cond_0
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadComplete"

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 715
    iput-boolean v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 717
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 718
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onPreInstallLanguage(Ljava/lang/String;)V

    .line 721
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;-><init>(Ljava/lang/Integer;Landroid/content/Context;Lcom/nuance/swype/connect/SDKDownloadManager;Z)V

    .line 722
    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 725
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 726
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    .line 727
    sget v0, Lcom/nuance/swype/input/R$string;->accessibility_setting_installing:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    :cond_1
    move v0, v7

    .line 730
    goto :goto_0
.end method

.method public downloadFailed(I)V
    .locals 10
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 663
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadFailed:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    if-nez p1, :cond_0

    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    if-ge v0, v9, :cond_0

    .line 665
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v8}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 666
    invoke-virtual {p0, v7}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 667
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$500(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$500(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isStalled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " connection available, attempting to resume. retryCount: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 672
    sget v0, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 673
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    .line 705
    :goto_0
    return-void

    .line 677
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    if-lt v0, v9, :cond_1

    .line 678
    const/4 p1, 0x1

    .line 680
    :cond_1
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] "

    const-string v5, " download failed, reason code: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 681
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 682
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v8}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 683
    iput v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    .line 689
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 701
    sget v0, Lcom/nuance/swype/input/R$string;->accessibility_setting_fail_language_installation:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    goto :goto_0

    .line 691
    :sswitch_0
    sget v0, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    goto :goto_0

    .line 695
    :sswitch_1
    sget v0, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    goto :goto_0

    .line 689
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public downloadPercentage(I)V
    .locals 7
    .param p1, "percent"    # I

    .prologue
    .line 648
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadPercent:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 651
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 657
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public downloadStarted()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 633
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] "

    const-string v5, "downloadStarted"

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v7}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 635
    iput-boolean v7, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 636
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->initNotification()V

    .line 639
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 640
    .local v6, "res":Landroid/content/res/Resources;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v1, Lcom/nuance/swype/input/R$string;->startup_lang_download_status:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 642
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 644
    :cond_0
    return-void
.end method

.method public downloadStopped(I)V
    .locals 7
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 607
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "downloadStopped:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 609
    if-nez p1, :cond_1

    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 610
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 612
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$500(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$500(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isStalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "["

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "] "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " connection available, attempting to resume. retryCount: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 617
    sget v0, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 618
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 626
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "[SDKDownloadFileCallback]"

    const-string v2, "downloadStopped...originalStatus: "

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 627
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    goto :goto_0
.end method

.method public getAccessibilityMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->accessibilityMessage:Ljava/lang/String;

    .line 601
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->accessibilityMessage:Ljava/lang/String;

    .line 602
    return-object v0
.end method

.method public getCoreLanguageId()I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method public getLanguageDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageId()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    return v0
.end method

.method public getOriginalStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->progress:I

    return v0
.end method

.method public getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    return-object v0
.end method

.method public getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->type:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    return-object v0
.end method

.method installed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 735
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 736
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 741
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v4, v5, :cond_1

    .line 742
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    const-string v6, " is upgraded"

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v4, v8}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 748
    :goto_0
    iput-boolean v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 749
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 752
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/nuance/swype/input/settings/LanguageDispatch;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 754
    .local v2, "resultIntent":Landroid/content/Intent;
    const-string v4, "select_installed_language"

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    const/high16 v4, 0x8000000

    invoke-static {v0, v7, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 761
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v4, v7, v7, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 766
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 768
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 745
    :cond_1
    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v4, v8}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 555
    iput p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->progress:I

    .line 556
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$400(Lcom/nuance/swype/connect/SDKDownloadManager;I)V

    .line 557
    return-void
.end method

.method public setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V
    .locals 5
    .param p1, "status"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .param p2, "force"    # Z

    .prologue
    .line 528
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "#### "

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 529
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v0, v1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v0, p1, :cond_0

    .line 534
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 535
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$400(Lcom/nuance/swype/connect/SDKDownloadManager;I)V

    goto :goto_0
.end method

.method public setType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->type:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 544
    return-void
.end method

.method public showNoSpaceNotificationIfShortStorage()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 576
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    if-eqz v4, :cond_0

    .line 577
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$500(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v1

    .line 578
    .local v1, "status":Lcom/nuance/swype/connect/ConnectedStatus;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 580
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$600()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 582
    sget v4, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 583
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageCancel(IZ)Z

    .line 584
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 589
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "status":Lcom/nuance/swype/connect/ConnectedStatus;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
