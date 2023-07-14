.class public final Lcom/nuance/swype/startup/StartupSequenceInfo;
.super Ljava/lang/Object;
.source "StartupSequenceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;,
        Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    }
.end annotation


# static fields
.field public static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDebugShouldShowStartupActive:Z

.field private final mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mScreenOrderSetting:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShowTos:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "StartupSequenceInfo"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mShowTos:Z

    .line 82
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mDebugShouldShowStartupActive:Z

    .line 95
    sget v10, Lcom/nuance/swype/input/R$xml;->startup_sequence_info:I

    .line 96
    .local v10, "startupSequenceInfoResId":I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    .line 97
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrder:Ljava/util/ArrayList;

    .line 98
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    .line 100
    const/4 v5, -0x1

    .line 102
    .local v5, "internalStatus":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 104
    .local v12, "xmlparser":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 105
    .local v7, "previousScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    const/4 v2, 0x0

    .line 107
    .local v2, "currentScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, "event":I
    const/4 v13, 0x1

    if-eq v3, v13, :cond_b

    .line 108
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "tag":Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v3, v13, :cond_6

    .line 110
    const-string/jumbo v13, "startup"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 111
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "start reading first_time"

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 112
    const/4 v5, 0x0

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v13, "setting"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 114
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "start reading setting"

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 115
    const/4 v5, 0x2

    goto :goto_0

    .line 116
    :cond_2
    const-string/jumbo v13, "screen"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 117
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "start reading screen"

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 118
    const/4 v13, 0x0

    const-string/jumbo v14, "name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "screenName":Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "showWarning"

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 120
    .local v9, "showWarning":Z
    const/4 v13, 0x0

    const-string/jumbo v14, "omitIfRussia"

    const/4 v15, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 121
    .local v6, "omitIfRussia":Z
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "raw - name: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, " - Warn: "

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string/jumbo v16, " - Russia "

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 122
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 123
    new-instance v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .end local v2    # "currentScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    invoke-direct {v2, v8, v9, v6}, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;-><init>(Ljava/lang/String;ZZ)V

    .restart local v2    # "currentScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    goto/16 :goto_0

    .line 126
    .end local v6    # "omitIfRussia":Z
    .end local v8    # "screenName":Ljava/lang/String;
    .end local v9    # "showWarning":Z
    :cond_3
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "unknown tag: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 148
    .end local v2    # "currentScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .end local v3    # "event":I
    .end local v11    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v13

    if-eqz v12, :cond_4

    .line 149
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 150
    sget-object v14, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "stop reading file"

    aput-object v17, v15, v16

    invoke-interface {v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    :cond_4
    throw v13
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .end local v7    # "previousScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .end local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 154
    .local v4, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "error: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 158
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_1
    return-void

    .line 128
    .restart local v2    # "currentScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .restart local v3    # "event":I
    .restart local v7    # "previousScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :cond_6
    const/4 v13, 0x3

    if-ne v3, v13, :cond_0

    .line 129
    :try_start_3
    const-string/jumbo v13, "startup"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 130
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string/jumbo v13, "screen"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 132
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "stop reading screen"

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 133
    if-eqz v7, :cond_8

    const/4 v13, 0x2

    if-eq v5, v13, :cond_8

    .line 134
    iput-object v2, v7, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 136
    :cond_8
    move-object v7, v2

    .line 137
    if-nez v5, :cond_9

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 139
    :cond_9
    const/4 v13, 0x2

    if-ne v5, v13, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    iget-object v14, v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v13, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 143
    :cond_a
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "unknown tag: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 148
    .end local v11    # "tag":Ljava/lang/String;
    :cond_b
    if-eqz v12, :cond_5

    .line 149
    :try_start_4
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 150
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "stop reading file"

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 155
    .end local v2    # "currentScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .end local v3    # "event":I
    .end local v7    # "previousScreen":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .end local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v4

    .line 156
    .local v4, "ex":Ljava/io/IOException;
    sget-object v13, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "error: "

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private getLanguageSelectedAndInstalled()Z
    .locals 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "startup_language_installed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLegalActivitiesStartIntent(Landroid/content/Context;ZZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tosRequired"    # Z
    .param p2, "optInRequired"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 418
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v9

    if-nez v9, :cond_5

    move v4, v7

    .line 419
    .local v4, "showTOS":Z
    :goto_0
    invoke-static {p0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/connect/Connect;->getLegal()Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v9

    if-nez v9, :cond_6

    move v3, v7

    .line 421
    .local v3, "showOptIn":Z
    :goto_1
    if-nez v4, :cond_0

    if-eqz v3, :cond_8

    .line 422
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v5

    .line 423
    .local v5, "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    const/4 v6, 0x0

    .line 424
    .local v6, "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 2085
    new-instance v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .end local v6    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    invoke-direct {v6}, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;-><init>()V

    .line 426
    .restart local v6    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    const-class v7, Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    .line 428
    :cond_1
    if-eqz v3, :cond_4

    if-eqz p2, :cond_4

    .line 429
    if-nez v6, :cond_2

    .line 3085
    new-instance v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .end local v6    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    invoke-direct {v6}, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;-><init>()V

    .line 432
    .restart local v6    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    :cond_2
    iget-object v7, v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 433
    :cond_3
    const-class v7, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    .line 441
    :cond_4
    :goto_2
    if-eqz v6, :cond_8

    .line 442
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "LegalRequirements"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "key":Ljava/lang/String;
    invoke-direct {v5, v1, v6}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setSettingScreenInfo(Ljava/lang/String;Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/nuance/swype/startup/StartupActivity;

    invoke-direct {v0, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "launch_mode"

    const-string/jumbo v8, "standalone"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string/jumbo v7, "launch_screen"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string/jumbo v7, "start_flags"

    const/16 v8, 0x1e

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    const-string/jumbo v7, "result_data"

    invoke-virtual {v0, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 456
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    .end local v6    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    :goto_3
    return-object v0

    .end local v3    # "showOptIn":Z
    .end local v4    # "showTOS":Z
    :cond_5
    move v4, v8

    .line 418
    goto/16 :goto_0

    .restart local v4    # "showTOS":Z
    :cond_6
    move v3, v8

    .line 419
    goto :goto_1

    .line 4085
    .restart local v3    # "showOptIn":Z
    .restart local v5    # "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    .restart local v6    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    :cond_7
    new-instance v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    invoke-direct {v2}, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;-><init>()V

    .line 436
    .local v2, "nextScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    const-class v7, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    .line 437
    iput-object v2, v6, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    goto :goto_2

    .line 456
    .end local v2    # "nextScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .end local v5    # "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    .end local v6    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static getLegalCUDActivitiesStartIntent(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "optInRequired"    # Z
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 464
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getStartupSequenceInfo()Lcom/nuance/swype/startup/StartupSequenceInfo;

    move-result-object v3

    .line 465
    .local v3, "startupSequenceInfo":Lcom/nuance/swype/startup/StartupSequenceInfo;
    const/4 v4, 0x0

    .line 467
    .local v4, "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    if-eqz p1, :cond_1

    .line 5085
    new-instance v4, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .end local v4    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    invoke-direct {v4}, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;-><init>()V

    .line 469
    .restart local v4    # "tempScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    iget-object v5, v4, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 470
    :cond_0
    const-class v5, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    .line 479
    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "LegalRequirements"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "key":Ljava/lang/String;
    invoke-direct {v3, v1, v4}, Lcom/nuance/swype/startup/StartupSequenceInfo;->setSettingScreenInfo(Ljava/lang/String;Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/nuance/swype/startup/StartupActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "launch_mode"

    const-string/jumbo v6, "standalone"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string/jumbo v5, "launch_screen"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v5, "start_flags"

    const/16 v6, 0x1e

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    const-string/jumbo v5, "result_data"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 493
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "key":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 6085
    :cond_2
    new-instance v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    invoke-direct {v2}, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;-><init>()V

    .line 473
    .local v2, "nextScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    const-class v5, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    .line 475
    iput-object v2, v4, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    goto :goto_0

    .line 493
    .end local v2    # "nextScreenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getShowSplash()Z
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "startup_show_splash"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getStartupSequenceDownloadLanguageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->getStartupSequenceDownloadLanguageID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 273
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "selectedInputMethods":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 277
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    sget-object v3, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->SELECTED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    .line 292
    :goto_1
    return-object v3

    .line 281
    :cond_0
    sget-object v3, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->ENABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    goto :goto_1

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_2
    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    sget-object v3, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->SELECTED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    goto :goto_1

    .line 292
    :cond_3
    sget-object v3, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    goto :goto_1
.end method

.method private isLocationRussia()Z
    .locals 3

    .prologue
    .line 557
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0xfa

    aput v2, v0, v1

    .line 558
    .local v0, "russiaMcc":[I
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "RU"

    invoke-static {v1, v2, v0}, Lcom/nuance/swype/util/LocalizationUtils;->isUsersLocation(Landroid/content/Context;Ljava/lang/String;[I)Z

    move-result v1

    return v1
.end method

.method private setSettingScreenInfo(Ljava/lang/String;Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "screenInfo"    # Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .prologue
    .line 176
    if-nez p2, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final acceptTos()V
    .locals 4

    .prologue
    .line 511
    sget-object v0, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "acceptTos"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 512
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->acceptTos()V

    .line 513
    return-void
.end method

.method public final getFirstStartupScreenInfo()Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "screenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrder:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrder:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "screenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    check-cast v0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .line 168
    .restart local v0    # "screenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    :goto_0
    return-object v0

    .line 166
    :cond_0
    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "getFirstStartupScreenInfo: screenOrderFirstTime not available!"

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final isEulaAccepted()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isEulaAccepted()Z

    move-result v0

    return v0
.end method

.method public final isInputFieldStartupOrPassword(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v0, 0x1

    .line 638
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    .line 639
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 642
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isOptInAccepted()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInAccepted()Z

    move-result v0

    return v0
.end method

.method final isOptInChanged()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isOptInChanged()Z

    move-result v0

    return v0
.end method

.method final isSwypeEnabled()Z
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->DISABLED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isSwypeSelected()Z
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getSwypeIMEState(Landroid/content/Context;)Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    move-result-object v0

    sget-object v1, Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;->SELECTED:Lcom/nuance/swype/startup/StartupSequenceInfo$SwypeIMEState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isTosAccepted()Z
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isTosAccepted()Z

    move-result v0

    return v0
.end method

.method final isTosChanged()Z
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->isTosChanged()Z

    move-result v0

    return v0
.end method

.method public final removeSettingScreenInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mScreenOrderSetting:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final setHotWordsStatus$1385ff()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->enable()V

    .line 596
    return-void
.end method

.method public final setLanguageSelectedAndInstalled$1385ff()V
    .locals 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "startup_language_installed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 601
    return-void
.end method

.method public final setShowBackupSync(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 604
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "startup_show_backup_sync"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 605
    return-void
.end method

.method public final setShowCud(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 608
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "startup_show_cud"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 609
    return-void
.end method

.method public final setShowGettingStarted(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 612
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "startup_show_getting_started"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 613
    return-void
.end method

.method public final setShowSplash(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 616
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "startup_show_splash"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 617
    return-void
.end method

.method final shouldShowDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z
    .locals 9
    .param p1, "screen"    # Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 302
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    :goto_0
    return v6

    .line 305
    :cond_0
    const/4 v3, 0x0

    .line 307
    .local v3, "shouldShow":Z
    const-class v4, Lcom/nuance/swype/startup/AccountRegisterDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 309
    const/4 v3, 0x1

    .line 411
    :cond_1
    :goto_1
    sget-object v4, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "shouldShowDelegate: screen: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", shouldShow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v6, v3

    .line 413
    goto :goto_0

    .line 311
    :cond_2
    const-class v4, Lcom/nuance/swype/startup/BackupAndSyncDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 313
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 1516
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const-string/jumbo v7, "startup_show_backup_sync"

    invoke-virtual {v4, v7, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 314
    if-eqz v4, :cond_4

    .line 315
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->showStartupRegistration()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isBackupAndSyncSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    .line 317
    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getAccounts()Lcom/nuance/swype/connect/Connect$Accounts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v4

    if-nez v4, :cond_4

    .line 318
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isLocationRussia()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->omitIfRussia:Z

    if-nez v4, :cond_4

    :cond_3
    move v3, v5

    .line 319
    :goto_2
    goto :goto_1

    :cond_4
    move v3, v6

    .line 318
    goto :goto_2

    .line 320
    .end local v0    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_5
    const-class v4, Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 322
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getStartupSequenceDownloadLanguageID()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "languageIDString":Ljava/lang/String;
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getLanguageSelectedAndInstalled()Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v3, v5

    .line 324
    :goto_3
    goto/16 :goto_1

    :cond_6
    move v3, v6

    .line 323
    goto :goto_3

    .line 325
    .end local v1    # "languageIDString":Ljava/lang/String;
    :cond_7
    const-class v4, Lcom/nuance/swype/startup/ConnectTOSDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 327
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isLocationRussia()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->omitIfRussia:Z

    if-nez v4, :cond_1

    .line 330
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 333
    :cond_9
    const-class v4, Lcom/nuance/swype/startup/ContributeUsageDataDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1520
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const-string/jumbo v7, "startup_show_cud"

    invoke-virtual {v4, v7, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 335
    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->wasOptInAccepted()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isOptInChanged()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 336
    :cond_a
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 337
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isOptInAccepted()Z

    move-result v4

    if-nez v4, :cond_c

    .line 338
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isLocationRussia()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->omitIfRussia:Z

    if-nez v4, :cond_c

    :cond_b
    move v3, v5

    :goto_4
    goto/16 :goto_1

    :cond_c
    move v3, v6

    goto :goto_4

    .line 340
    :cond_d
    const-class v4, Lcom/nuance/swype/startup/DownloadLanguageDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 342
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getLanguageSelectedAndInstalled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 344
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 347
    :cond_e
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getStartupSequenceDownloadLanguageID()Ljava/lang/String;

    move-result-object v1

    .line 349
    .restart local v1    # "languageIDString":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 351
    .local v2, "languageId":I
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/connect/Connect;->getDownloadManager()Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v4

    .line 352
    invoke-virtual {v4, v6}, Lcom/nuance/swype/connect/SDKDownloadManager;->getSettingDownloadLanguageList(Z)Ljava/util/Map;

    move-result-object v4

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;

    .line 355
    if-eqz v4, :cond_f

    .line 356
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 360
    :cond_f
    sget-object v4, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "shouldShowDelegate: could not get DownloadableLanguage for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 363
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Lcom/nuance/swype/input/AppPreferences;->setStartupSequenceDownloadLanguageID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 368
    .end local v1    # "languageIDString":Ljava/lang/String;
    .end local v2    # "languageId":I
    :cond_10
    const-class v4, Lcom/nuance/swype/startup/EulaGooglePlayDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 370
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isEulaAccepted()Z

    move-result v4

    if-nez v4, :cond_11

    move v3, v5

    :goto_5
    goto/16 :goto_1

    :cond_11
    move v3, v6

    goto :goto_5

    .line 372
    :cond_12
    const-class v4, Lcom/nuance/swype/startup/EnableSwypeDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 374
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeEnabled()Z

    move-result v4

    if-nez v4, :cond_13

    move v3, v5

    :goto_6
    goto/16 :goto_1

    :cond_13
    move v3, v6

    goto :goto_6

    .line 376
    :cond_14
    const-class v4, Lcom/nuance/swype/startup/GettingStartedDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1524
    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const-string/jumbo v7, "startup_show_getting_started"

    invoke-virtual {v4, v7, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 378
    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    .line 379
    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/AppPreferences;->showSwypeWelcomeStartupScreens()Z

    move-result v4

    if-eqz v4, :cond_15

    move v3, v5

    :goto_7
    goto/16 :goto_1

    :cond_15
    move v3, v6

    goto :goto_7

    .line 381
    :cond_16
    const-class v4, Lcom/nuance/swype/startup/LegalDocsSplashDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 383
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isEulaAccepted()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getShowSplash()Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    move v3, v5

    :goto_8
    goto/16 :goto_1

    :cond_18
    move v3, v6

    goto :goto_8

    .line 385
    :cond_19
    const-class v4, Lcom/nuance/swype/startup/LegalDocsSplashOemDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 387
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->wasTosAccepted()Z

    move-result v4

    if-nez v4, :cond_1b

    :cond_1a
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getShowSplash()Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_1b
    move v3, v5

    :goto_9
    goto/16 :goto_1

    :cond_1c
    move v3, v6

    goto :goto_9

    .line 389
    :cond_1d
    const-class v4, Lcom/nuance/swype/startup/SelectSwypeDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 391
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isSwypeSelected()Z

    move-result v4

    if-nez v4, :cond_1e

    move v3, v5

    :goto_a
    goto/16 :goto_1

    :cond_1e
    move v3, v6

    goto :goto_a

    .line 393
    :cond_1f
    const-class v4, Lcom/nuance/swype/startup/StartupConnectTOSDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1532
    iget-boolean v4, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mShowTos:Z

    .line 395
    if-eqz v4, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isTosAccepted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isLocationRussia()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-boolean v4, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->omitIfRussia:Z

    if-nez v4, :cond_1

    .line 399
    :cond_20
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 402
    :cond_21
    const-class v4, Lcom/nuance/swype/startup/UsageOptInDelegate;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 404
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isOptInAccepted()Z

    move-result v4

    if-nez v4, :cond_23

    .line 405
    invoke-direct {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isLocationRussia()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-boolean v4, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->omitIfRussia:Z

    if-nez v4, :cond_23

    :cond_22
    move v3, v5

    :goto_b
    goto/16 :goto_1

    :cond_23
    move v3, v6

    goto :goto_b

    .line 408
    :cond_24
    sget-object v4, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unknown start-up delegate: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->screenName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method final shouldShowNetworkAgreementDialog()Z
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->enable_china_connect_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    .line 625
    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->shouldShowNetworkAgreementDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldShowStartup(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z
    .locals 8
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputFieldInfo"    # Lcom/nuance/swype/input/InputFieldInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 226
    const/4 v1, 0x0

    .line 228
    .local v1, "shouldShow":Z
    sget-object v4, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "shouldShowStartup: packageName: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ", currentEditorInput: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 230
    sget-object v4, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shouldShowStartup: isPasswordField: "

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string/jumbo v2, "null"

    .line 231
    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    .line 230
    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/startup/StartupSequenceInfo;->isInputFieldStartupOrPassword(Landroid/view/inputmethod/EditorInfo;Lcom/nuance/swype/input/InputFieldInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 268
    :goto_2
    return v2

    .line 228
    :cond_0
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isUserUnlockFinished()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 237
    goto :goto_2

    .line 241
    :cond_3
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    .line 242
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    sget-object v2, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "shouldShowStartup: started by ourselves, will not show startup"

    aput-object v5, v4, v3

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v2, v3

    .line 244
    goto :goto_2

    .line 247
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/nuance/swype/input/InputFieldInfo;->isPasswordField()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    sget-object v2, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "shouldShowStartup: in password field, will not show startup"

    aput-object v5, v4, v3

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move v2, v3

    .line 249
    goto :goto_2

    .line 252
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->getFirstStartupScreenInfo()Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    move-result-object v0

    .line 254
    .local v0, "screenInfo":Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;
    iget-boolean v2, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mDebugShouldShowStartupActive:Z

    if-eqz v2, :cond_6

    .line 255
    sget-object v2, Lcom/nuance/swype/startup/StartupSequenceInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "shouldShowStartup: circular loop detected"

    invoke-interface {v2, v4}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 257
    :cond_6
    iput-boolean v7, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mDebugShouldShowStartupActive:Z

    .line 259
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 260
    invoke-virtual {p0, v0}, Lcom/nuance/swype/startup/StartupSequenceInfo;->shouldShowDelegate(Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;)Z

    move-result v1

    .line 262
    if-nez v1, :cond_7

    .line 263
    iget-object v0, v0, Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;->nextScreenInfo:Lcom/nuance/swype/startup/StartupSequenceInfo$ScreenInfo;

    goto :goto_3

    .line 267
    :cond_8
    iput-boolean v3, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mDebugShouldShowStartupActive:Z

    move v2, v1

    .line 268
    goto :goto_2
.end method

.method final wasOptInAccepted()Z
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->wasOptInAccepted()Z

    move-result v0

    return v0
.end method

.method final wasTosAccepted()Z
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupSequenceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/connect/ConnectLegal;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/ConnectLegal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectLegal;->wasTosAccepted()Z

    move-result v0

    return v0
.end method
