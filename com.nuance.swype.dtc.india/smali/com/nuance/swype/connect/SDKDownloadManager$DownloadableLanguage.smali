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
.field private currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

.field protected downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

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
    .line 405
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
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 446
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    .line 447
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 448
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 449
    iput-object p3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->type:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 450
    iput-object p4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    .line 451
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$800(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$700(Lcom/nuance/swype/connect/SDKDownloadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 743
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

    .line 755
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 756
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 757
    .local v0, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 758
    new-instance v3, Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 761
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x8000000

    invoke-static {v0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 767
    .local v2, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 768
    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v4, Lcom/nuance/swype/input/R$string;->accessibility_voice_input_wait:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    sget v4, Lcom/nuance/swype/input/R$drawable;->swype_icon:I

    .line 769
    invoke-virtual {v3, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setSmallIcon(I)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    .line 770
    invoke-virtual {v3, v5, v5, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    .line 771
    invoke-virtual {v3, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v3

    .line 772
    invoke-virtual {v3, v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 774
    .end local v2    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private setNotificationIndeterminant(I)V
    .locals 4
    .param p1, "context"    # I

    .prologue
    const/4 v3, 0x0

    .line 723
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 724
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-nez v1, :cond_0

    .line 725
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->initNotification()V

    .line 727
    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v1, :cond_2

    .line 728
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v1, v3, v3, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 730
    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 734
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v1, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 735
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 737
    :cond_2
    return-void
.end method


# virtual methods
.method public allowedCancel()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    return v0
.end method

.method public changeOriginalStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;)V
    .locals 1
    .param p1, "status"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 481
    return-void
.end method

.method public compareTo(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)I
    .locals 3
    .param p1, "another"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .prologue
    .line 455
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

    .prologue
    .line 403
    check-cast p1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->compareTo(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)I

    move-result v0

    return v0
.end method

.method public downloadComplete(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 662
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->COMPLETE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 663
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v5

    const-string/jumbo v2, "["

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "] "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "downloadComplete"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 664
    iput-boolean v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 666
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/SDKDownloadManager;->getLanguageFromId(I)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->onPreInstallLanguage(Ljava/lang/String;)V

    .line 670
    new-instance v0, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;-><init>(Ljava/lang/Integer;Landroid/content/Context;Lcom/nuance/swype/connect/SDKDownloadManager;)V

    .line 671
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager$InstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 674
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 676
    sget v0, Lcom/nuance/swype/input/R$string;->accessibility_setting_installing:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 679
    :cond_0
    return v4
.end method

.method public downloadFailed(I)V
    .locals 9
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 609
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v4

    const-string/jumbo v2, "["

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "] "

    aput-object v2, v1, v7

    const-string/jumbo v2, "downloadFailed:"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 610
    if-ne p1, v6, :cond_1

    .line 611
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 612
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 613
    sget v0, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 614
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0, v6}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$600(Lcom/nuance/swype/connect/SDKDownloadManager;I)V

    .line 640
    :cond_0
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 654
    sget v0, Lcom/nuance/swype/input/R$string;->accessibility_setting_fail_language_installation:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 658
    :goto_1
    return-void

    .line 615
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    if-ge v0, v7, :cond_2

    .line 616
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 617
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 618
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$400(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$400(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isStalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v4

    const-string/jumbo v2, "["

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "] "

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " connection available, attempting to resume. retryCount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 623
    sget v0, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 624
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    goto :goto_1

    .line 628
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    if-lt v0, v7, :cond_3

    .line 629
    const/4 p1, 0x1

    .line 631
    :cond_3
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v4

    const-string/jumbo v2, "["

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "] "

    aput-object v2, v1, v7

    const-string/jumbo v2, " download failed, reason code: "

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 632
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 633
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 634
    iput v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    goto/16 :goto_0

    .line 643
    :sswitch_0
    sget v0, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    goto/16 :goto_1

    .line 646
    :sswitch_1
    sget v0, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    goto/16 :goto_1

    .line 640
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public downloadPercentage(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    const/4 v4, 0x0

    .line 590
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "["

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget v3, v3, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "] "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "downloadPercent:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 591
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 597
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/android/compat/ActivityManagerCompat;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, v4}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 603
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
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 575
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[SDKDownloadFileCallback]"

    aput-object v4, v2, v3

    const-string/jumbo v3, "["

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget v4, v4, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "] "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "downloadStarted"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 576
    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v1, v5}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 577
    iput-boolean v5, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 578
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->initNotification()V

    .line 581
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 582
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    sget v2, Lcom/nuance/swype/input/R$string;->startup_lang_download_status:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 584
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 586
    :cond_0
    return-void
.end method

.method public downloadStopped(I)V
    .locals 7
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 550
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v4

    const-string/jumbo v2, "downloadStopped:"

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 551
    if-nez p1, :cond_1

    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    if-ge v0, v5, :cond_1

    .line 552
    sget-object v0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->STOPPED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 553
    invoke-virtual {p0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setProgress(I)V

    .line 554
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$400(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$400(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isStalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v4

    const-string/jumbo v2, "["

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string/jumbo v2, "] "

    aput-object v2, v1, v5

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " connection available, attempting to resume. retryCount: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->retryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 559
    sget v0, Lcom/nuance/swype/input/R$string;->startup_internet_connection:I

    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 560
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageDownload(I)V

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 567
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "[SDKDownloadFileCallback]"

    aput-object v2, v1, v4

    const-string/jumbo v2, "downloadStopped...originalStatus: "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    aput-object v2, v1, v6

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 568
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v0, v3}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 569
    iput-boolean v3, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    goto :goto_0
.end method

.method public getCoreLanguageId()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnglishName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v0
.end method

.method public getLanguageDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageId()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->language:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v0

    return v0
.end method

.method public getOriginalStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->progress:I

    return v0
.end method

.method public getStatus()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    return-object v0
.end method

.method public getType()Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->type:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    return-object v0
.end method

.method installed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 684
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 685
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 687
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->originalStatus:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v5, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATE_AVAILABLE:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v4, v5, :cond_1

    .line 688
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, " is upgraded"

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 689
    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->UPDATED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v4, v8}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 694
    :goto_0
    iput-boolean v8, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->isAllowedCancel:Z

    .line 695
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 698
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/nuance/swype/input/settings/LanguageDispatch;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 699
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 700
    .local v2, "resultIntent":Landroid/content/Intent;
    const/high16 v4, 0x8000000

    invoke-static {v0, v7, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 706
    .local v3, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v4, v7, v7, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setProgress(IIZ)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->pref_download_language_installed:I

    .line 707
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 708
    invoke-virtual {v4, v8}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 709
    invoke-virtual {v4, v7}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setOngoing(Z)Lcom/nuance/android/compat/NotificationCompat$Builder;

    move-result-object v4

    .line 710
    invoke-virtual {v4, v3}, Lcom/nuance/android/compat/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/android/compat/NotificationCompat$Builder;

    .line 711
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->notificationBuilder:Lcom/nuance/android/compat/NotificationCompat$Builder;

    invoke-virtual {v6}, Lcom/nuance/android/compat/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 713
    .end local v2    # "resultIntent":Landroid/content/Intent;
    .end local v3    # "resultPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 691
    :cond_1
    sget-object v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->INSTALLED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v4, v8}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->progress:I

    .line 512
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$300(Lcom/nuance/swype/connect/SDKDownloadManager;I)V

    .line 513
    return-void
.end method

.method public setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V
    .locals 4
    .param p1, "status"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;
    .param p2, "force"    # Z

    .prologue
    .line 484
    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "#### "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 485
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    sget-object v1, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->DOWNLOADING:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-ne v0, v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    if-eq v0, p1, :cond_0

    .line 490
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->currentState:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    .line 491
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$300(Lcom/nuance/swype/connect/SDKDownloadManager;I)V

    goto :goto_0
.end method

.method public setType(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->type:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Type;

    .line 500
    return-void
.end method

.method public showNoSpaceNotificationIfShortStorage()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 532
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    if-eqz v4, :cond_0

    .line 533
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-static {v4}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$400(Lcom/nuance/swype/connect/SDKDownloadManager;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v1

    .line 534
    .local v1, "status":Lcom/nuance/swype/connect/ConnectedStatus;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 536
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    invoke-static {}, Lcom/nuance/swype/connect/SDKDownloadManager;->access$500()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 538
    sget v4, Lcom/nuance/swype/input/R$string;->error_out_of_disc_space:I

    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setNotificationIndeterminant(I)V

    .line 539
    iget-object v4, p0, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->downloadManager:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->getLanguageId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/nuance/swype/connect/SDKDownloadManager;->languageCancel(IZ)Z

    .line 540
    sget-object v3, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;->CANCELED:Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;

    invoke-virtual {p0, v3, v2}, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;->setStatus(Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage$Status;Z)V

    .line 545
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "status":Lcom/nuance/swype/connect/ConnectedStatus;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method
