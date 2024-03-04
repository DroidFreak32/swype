.class Lcom/nuance/swype/connect/Connect$3;
.super Ljava/lang/Thread;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    .line 613
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1400()Lcom/nuance/swype/util/LogManager$Trace;

    .line 614
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v9

    .line 616
    .local v9, "info":Lcom/nuance/swype/input/BuildInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->getAppKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "_"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "appkey":Ljava/lang/String;
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$1500(Lcom/nuance/swype/connect/Connect;)V

    .line 620
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1400()Lcom/nuance/swype/util/LogManager$Trace;

    .line 621
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    new-instance v12, Lcom/nuance/swypeconnect/ac/ACManager;

    iget-object v13, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v13}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Lcom/nuance/swypeconnect/ac/ACManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v10, v12}, Lcom/nuance/swype/connect/Connect;->access$602(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACManager;

    .line 622
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1400()Lcom/nuance/swype/util/LogManager$Trace;

    .line 625
    iget-object v12, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v10

    const-string v13, "notification"

    invoke-virtual {v10, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    invoke-static {v12, v10}, Lcom/nuance/swype/connect/Connect;->access$802(Lcom/nuance/swype/connect/Connect;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 629
    :try_start_0
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v6

    .line 630
    .local v6, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    const-string v2, "9.10"

    .line 631
    .local v2, "coreVersionAlpha":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isChineseInputBuildEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->isChineseCoreEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v3, "9.10"

    .line 632
    .local v3, "coreVersionChinese":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->isJapaneseCoreEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v4, "9.10"

    .line 633
    .local v4, "coreVersionJapanese":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->isKoreanCoreEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v5, "9.10"

    .line 634
    .local v5, "coreVersionKorean":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v10

    invoke-virtual {v10, v2, v3, v4, v5}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v2    # "coreVersionAlpha":Ljava/lang/String;
    .end local v3    # "coreVersionChinese":Ljava/lang/String;
    .end local v4    # "coreVersionJapanese":Ljava/lang/String;
    .end local v5    # "coreVersionKorean":Ljava/lang/String;
    .end local v6    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    :goto_3
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v10

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setCustomerString(Ljava/lang/String;)V

    .line 642
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v10

    .line 643
    invoke-virtual {v10}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v1

    .line 644
    .local v1, "cellularEnabled":Z
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v10, v1}, Lcom/nuance/swype/connect/Connect;->enableCellularData(Z)V

    .line 647
    :try_start_1
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v10

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->getRefreshInterval()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setRefreshInterval(I)V
    :try_end_1
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1 .. :try_end_1} :catch_1

    .line 652
    :goto_4
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    iget-object v12, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v12}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nuance/swypeconnect/ac/ACManager;->getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/nuance/swype/connect/Connect;->access$1602(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACLanguage;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    .line 653
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$1700(Lcom/nuance/swype/connect/Connect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 654
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$1600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput()V

    .line 656
    :cond_0
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$1800(Lcom/nuance/swype/connect/Connect;)Ljava/util/Locale;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 657
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10, v11}, Lcom/nuance/swype/connect/Connect;->access$1802(Lcom/nuance/swype/connect/Connect;Ljava/util/Locale;)Ljava/util/Locale;

    .line 658
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$1600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v10

    iget-object v12, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v12}, Lcom/nuance/swype/connect/Connect;->access$1800(Lcom/nuance/swype/connect/Connect;)Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLocale(Ljava/util/Locale;)V

    .line 661
    :cond_1
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$1900(Lcom/nuance/swype/connect/Connect;)[I

    move-result-object v10

    if-eqz v10, :cond_2

    .line 662
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10, v11}, Lcom/nuance/swype/connect/Connect;->access$1902(Lcom/nuance/swype/connect/Connect;[I)[I

    .line 663
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$1600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v10

    iget-object v11, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v11}, Lcom/nuance/swype/connect/Connect;->access$1900(Lcom/nuance/swype/connect/Connect;)[I

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLanguages([I)V

    .line 666
    :cond_2
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$200(Lcom/nuance/swype/connect/Connect;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 667
    iget-object v10, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v10}, Lcom/nuance/swype/connect/Connect;->access$2000(Lcom/nuance/swype/connect/Connect;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 668
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1400()Lcom/nuance/swype/util/LogManager$Trace;

    .line 669
    return-void

    .end local v1    # "cellularEnabled":Z
    .restart local v2    # "coreVersionAlpha":Ljava/lang/String;
    .restart local v6    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    :cond_3
    move-object v3, v11

    .line 631
    goto/16 :goto_0

    .restart local v3    # "coreVersionChinese":Ljava/lang/String;
    :cond_4
    move-object v4, v11

    .line 632
    goto/16 :goto_1

    .restart local v4    # "coreVersionJapanese":Ljava/lang/String;
    :cond_5
    move-object v5, v11

    .line 633
    goto/16 :goto_2

    .line 635
    .end local v2    # "coreVersionAlpha":Ljava/lang/String;
    .end local v3    # "coreVersionChinese":Ljava/lang/String;
    .end local v4    # "coreVersionJapanese":Ljava/lang/String;
    .end local v6    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    :catch_0
    move-exception v8

    .line 636
    .local v8, "ex":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to set core versions: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 648
    .end local v8    # "ex":Lcom/nuance/swypeconnect/ac/ACException;
    .restart local v1    # "cellularEnabled":Z
    :catch_1
    move-exception v7

    .line 649
    .local v7, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Refresh interval ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo;->getRefreshInterval()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") is invalid, check your build config. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method
