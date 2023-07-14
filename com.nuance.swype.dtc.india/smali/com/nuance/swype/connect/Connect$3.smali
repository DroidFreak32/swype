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
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private setProperties(Lcom/nuance/swypeconnect/ac/ACManager;)V
    .locals 13
    .param p1, "acManager"    # Lcom/nuance/swypeconnect/ac/ACManager;

    .prologue
    .line 741
    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v1

    .line 743
    .local v1, "config":Lcom/nuance/swypeconnect/ac/ACConfiguration;
    :try_start_0
    const-string/jumbo v4, "GOOGLE_PLAY"

    .line 744
    .local v4, "processor":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Setting PAYMENT_PROCESSOR: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 745
    const-string/jumbo v9, "PAYMENT_PROCESSOR"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v4, v10}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 747
    const-string/jumbo v7, "3"

    .line 748
    .local v7, "themeEngine":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Setting THEME_ENGINE: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 749
    const-string/jumbo v9, "THEME_ENGINE"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v7, v10}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 751
    iget-object v9, p0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v9}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v3

    .line 752
    .local v3, "info":Lcom/nuance/swype/input/BuildInfo;
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v6

    .line 753
    .local v6, "swib":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Setting SKA_SWIB: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 754
    const-string/jumbo v9, "SKA_SWIB"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v6, v10}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 756
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getBuildType()Lcom/nuance/swype/input/BuildInfo$BuildType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/BuildInfo$BuildType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "buildType":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Setting SKA_TYPE: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 758
    const-string/jumbo v9, "SKA_TYPE"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v0, v10}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 761
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getBuildVersion()Ljava/lang/String;

    move-result-object v8

    .line 762
    .local v8, "version":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Setting SKA_VERSION: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 763
    const-string/jumbo v9, "SKA_VERSION"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v8, v10}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 765
    invoke-virtual {v3}, Lcom/nuance/swype/input/BuildInfo;->getRobWorkspace()Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, "robWorkspace":Ljava/lang/String;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Setting SWYPE_OEM_ID: "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 767
    const-string/jumbo v9, "SWYPE_OEM_ID"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v5, v10}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v0    # "buildType":Ljava/lang/String;
    .end local v3    # "info":Lcom/nuance/swype/input/BuildInfo;
    .end local v4    # "processor":Ljava/lang/String;
    .end local v5    # "robWorkspace":Ljava/lang/String;
    .end local v6    # "swib":Ljava/lang/String;
    .end local v7    # "themeEngine":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v2

    .line 769
    .local v2, "e":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Error setting config. "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v9, v10}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 651
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1500()Lcom/nuance/swype/util/LogManager$Trace;

    .line 652
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v10

    .line 654
    .local v10, "info":Lcom/nuance/swype/input/BuildInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->getAppKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .local v1, "appkey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$1600(Lcom/nuance/swype/connect/Connect;)V

    .line 658
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1500()Lcom/nuance/swype/util/LogManager$Trace;

    .line 659
    const/16 v14, 0xa

    new-array v13, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "LANGUAGE"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "LIVING_LANGUAGE"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "ACCOUNT"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string/jumbo v15, "DLM_SYNC_SERVICE"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "CHINESE_DICTIONARY_SERVICE"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const-string/jumbo v15, "SCANNER_SERVICE"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string/jumbo v15, "CATALOG_SERVICE"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const-string/jumbo v15, "CHINESE_CLOUD_PREDICTION"

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string/jumbo v15, "REPORTING_SERVICE"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    const-string/jumbo v15, "PACKAGE_UPDATER_SERVICE"

    aput-object v15, v13, v14

    .line 666
    .local v13, "services":[Ljava/lang/String;
    new-instance v11, Lcom/nuance/swype/connect/Connect$3$1;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14, v1, v13}, Lcom/nuance/swype/connect/Connect$3$1;-><init>(Lcom/nuance/swype/connect/Connect$3;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 676
    .local v11, "initializeInfo":Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    new-instance v15, Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-direct {v15, v11}, Lcom/nuance/swypeconnect/ac/ACManager;-><init>(Lcom/nuance/swypeconnect/ac/ACManager$ACInitializeInfo;)V

    invoke-static {v14, v15}, Lcom/nuance/swype/connect/Connect;->access$602(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACManager;)Lcom/nuance/swypeconnect/ac/ACManager;

    .line 677
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1500()Lcom/nuance/swype/util/LogManager$Trace;

    .line 680
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v16, "notification"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    invoke-static {v15, v14}, Lcom/nuance/swype/connect/Connect;->access$802(Lcom/nuance/swype/connect/Connect;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 684
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v8

    .line 685
    .local v8, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    const-string/jumbo v4, "9.12"

    .line 686
    .local v4, "coreVersionAlpha":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isChineseInputBuildEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->isChineseCoreEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v5, "9.12"

    .line 687
    .local v5, "coreVersionChinese":Ljava/lang/String;
    :goto_0
    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->isJapaneseCoreEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v6, "9.12"

    .line 688
    .local v6, "coreVersionJapanese":Ljava/lang/String;
    :goto_1
    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->isKoreanCoreEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    const-string/jumbo v7, "9.12"

    .line 690
    .local v7, "coreVersionKorean":Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getXT9CoreVersion()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "coreLibVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$1700(Lcom/nuance/swype/connect/Connect;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 693
    .local v12, "mMatcherCoreVersion":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 694
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-virtual {v8}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isChineseInputBuildEnabled()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->isChineseCoreEnabled()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v5, v4

    .line 696
    :goto_3
    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->isJapaneseCoreEnabled()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v6, v4

    .line 697
    :goto_4
    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->isKoreanCoreEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object v7, v4

    .line 700
    :cond_0
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v14

    invoke-virtual {v14, v4, v5, v6, v7}, Lcom/nuance/swypeconnect/ac/ACManager;->setCoreVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v14

    sget-object v15, Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;->TLSv1_2:Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;

    invoke-virtual {v14, v15}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setMinimumSSLProtocol(Lcom/nuance/swypeconnect/ac/ACConfiguration$ACSSLProtocol;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .end local v3    # "coreLibVersion":Ljava/lang/String;
    .end local v4    # "coreVersionAlpha":Ljava/lang/String;
    .end local v5    # "coreVersionChinese":Ljava/lang/String;
    .end local v6    # "coreVersionJapanese":Ljava/lang/String;
    .end local v7    # "coreVersionKorean":Ljava/lang/String;
    .end local v8    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .end local v12    # "mMatcherCoreVersion":Ljava/util/regex/Matcher;
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v14

    invoke-virtual {v10}, Lcom/nuance/swype/input/BuildInfo;->getSwib()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setCustomerString(Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nuance/swype/connect/Connect$3;->setProperties(Lcom/nuance/swypeconnect/ac/ACManager;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v14

    .line 714
    invoke-virtual {v14}, Lcom/nuance/swype/input/UserPreferences;->connectUseCellularData()Z

    move-result v2

    .line 715
    .local v2, "cellularEnabled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-virtual {v14, v2}, Lcom/nuance/swype/connect/Connect;->enableCellularData(Z)V

    .line 717
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v15}, Lcom/nuance/swype/connect/Connect;->access$600(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/swypeconnect/ac/ACManager;->getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/nuance/swype/connect/Connect;->access$1802(Lcom/nuance/swype/connect/Connect;Lcom/nuance/swypeconnect/ac/ACLanguage;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    .line 718
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$1900(Lcom/nuance/swype/connect/Connect;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$1800(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nuance/swypeconnect/ac/ACLanguage;->onFinishInput()V

    .line 721
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$2000(Lcom/nuance/swype/connect/Connect;)Ljava/util/Locale;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$1800(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v15}, Lcom/nuance/swype/connect/Connect;->access$2000(Lcom/nuance/swype/connect/Connect;)Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/nuance/swypeconnect/ac/ACLanguage;->setActiveLocale(Ljava/util/Locale;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/nuance/swype/connect/Connect;->access$2002(Lcom/nuance/swype/connect/Connect;Ljava/util/Locale;)Ljava/util/Locale;

    .line 726
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$200(Lcom/nuance/swype/connect/Connect;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 727
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/connect/Connect$3;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v14}, Lcom/nuance/swype/connect/Connect;->access$2100(Lcom/nuance/swype/connect/Connect;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 728
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$1500()Lcom/nuance/swype/util/LogManager$Trace;

    .line 729
    return-void

    .line 686
    .end local v2    # "cellularEnabled":Z
    .restart local v4    # "coreVersionAlpha":Ljava/lang/String;
    .restart local v8    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 687
    .restart local v5    # "coreVersionChinese":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 688
    .restart local v6    # "coreVersionJapanese":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 695
    .restart local v3    # "coreLibVersion":Ljava/lang/String;
    .restart local v7    # "coreVersionKorean":Ljava/lang/String;
    .restart local v12    # "mMatcherCoreVersion":Ljava/util/regex/Matcher;
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 696
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 697
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 702
    .end local v3    # "coreLibVersion":Ljava/lang/String;
    .end local v4    # "coreVersionAlpha":Ljava/lang/String;
    .end local v5    # "coreVersionChinese":Ljava/lang/String;
    .end local v6    # "coreVersionJapanese":Ljava/lang/String;
    .end local v7    # "coreVersionKorean":Ljava/lang/String;
    .end local v8    # "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    .end local v12    # "mMatcherCoreVersion":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v9

    .line 703
    .local v9, "ex":Lcom/nuance/swypeconnect/ac/ACException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Failed to set core versions: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/nuance/swypeconnect/ac/ACException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_6
.end method
