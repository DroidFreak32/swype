.class public Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;
.super Ljava/lang/Object;
.source "AppSpecificBehavior.java"


# static fields
.field public static final DEFAULT_AUTOSPACE_IN_URL_FIELD:Z

.field public static final DEFAULT_AUTOSPACE_ON_TEXT_EXTRACT_FAILURE:Z

.field public static final DEFAULT_AVOID_SET_COMPOSING_REGION:Z

.field public static final DEFAULT_BYPASS_INTERNAL_CACHE:Z

.field public static final DEFAULT_CHECK_SET_CURRRENT_CURSOR:Z

.field public static final DEFAULT_DISABLE_CANDIDATES_LIST:Z

.field public static final DEFAULT_DISABLE_DELETE_RECAPTURE_IN_ALL_FIELDS:Z

.field public static final DEFAULT_DISABLE_EMOJI_CANDIDATES_LIST:Z

.field public static final DEFAULT_DISABLE_RECAPTURE:Z

.field public static final DEFAULT_FILTER_INPUTVIEW_RESTARTS:Z

.field public static final DEFAULT_FORCE_TYPE_NULL_FOR_BACK_SPACE:Z

.field public static final DEFAULT_IGNORE_LOST_COMPOSING_TEXT:Z

.field public static final DEFAULT_IGNORE_TYPE_NULL_CHECK_FOR_BACKSPACE:Z

.field public static final DEFAULT_NO_CONTEXT_MENU_EDITING:Z

.field public static final DEFAULT_NO_REPLACING_RESELECTED_WORD_WHEN_MATCHING:Z

.field public static final DEFAULT_NO_SET_SELECTION:Z

.field public static final DEFAULT_RESTRICT_GET_TEXT_LENGTH_FROM_CURSOR:Z

.field public static final DEFAULT_SELECT_TEXT_TO_REPLACE:Z

.field public static final DEFAULT_SHOULD_CLEAR_COMPOSING_ADD_DELETE_SPACE:Z

.field public static final DEFAULT_SHOULD_SEND_RETURN_AS_KEY_EVENT:Z

.field public static final DEFAULT_SHOULD_SET_COMPOSING_SPAN:Z

.field public static final DEFAULT_SHOULD_USE_SEARCH_RECOGNIZER_TYPE_FOR_URL:Z


# instance fields
.field private final behavior_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/appspecific/BehaviorInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentBehaviorOverride:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/appspecific/BehaviorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceByPassCache:Z

.field private mInputFieldImeOptions:I

.field private mInputFieldInputType:I

.field private swypePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldImeOptions:I

    .line 49
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldInputType:I

    .line 64
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->swypePackageName:Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v21, Lcom/nuance/swype/input/R$xml;->app_specific:I

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v20

    .line 69
    .local v20, "xmlparser":Landroid/content/res/XmlResourceParser;
    const/4 v13, 0x0

    .line 70
    .local v13, "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v17

    .line 73
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .local v11, "appNameString":Ljava/lang/String;
    move-object v14, v13

    .line 75
    .end local v13    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .local v14, "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v15

    .local v15, "event":I
    const/4 v4, 0x1

    if-eq v15, v4, :cond_8

    .line 76
    const/4 v4, 0x2

    if-ne v15, v4, :cond_4

    .line 77
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 78
    .local v19, "tag":Ljava/lang/String;
    const-string/jumbo v4, "application"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    const/4 v4, 0x0

    const-string/jumbo v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 80
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v19    # "tag":Ljava/lang/String;
    .restart local v13    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    :goto_1
    const/4 v4, 0x3

    if-ne v15, v4, :cond_9

    .line 103
    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 104
    .restart local v19    # "tag":Ljava/lang/String;
    const-string/jumbo v4, "application"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v13, :cond_7

    .line 105
    const-string/jumbo v4, ";"

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 106
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/4 v4, 0x0

    move/from16 v21, v4

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    aget-object v4, v22, v21

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 109
    .local v10, "appName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v16

    .line 114
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_3
    if-eqz v16, :cond_5

    .line 115
    :try_start_4
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    .line 116
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->updateEnabled(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 126
    .end local v10    # "appName":Ljava/lang/String;
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .end local v15    # "event":I
    :goto_5
    if-eqz v20, :cond_0

    .line 127
    :try_start_5
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v4
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 134
    .end local v11    # "appNameString":Ljava/lang/String;
    .end local v13    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 135
    :cond_1
    :goto_6
    return-void

    .line 81
    .restart local v11    # "appNameString":Ljava/lang/String;
    .restart local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v15    # "event":I
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v20    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_6
    const-string/jumbo v4, "override"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 82
    const/4 v4, 0x0

    const-string/jumbo v21, "behavior"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 83
    .local v12, "behavior":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v21, "value"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 84
    .local v18, "stringValue":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v21, "brand"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "brand":Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v21, "minVersion"

    const/16 v22, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 87
    .local v5, "minVersion":I
    const/4 v4, 0x0

    const-string/jumbo v21, "maxVersion"

    const/16 v22, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 89
    .local v6, "maxVersion":I
    const/4 v4, 0x0

    const-string/jumbo v21, "minsdk"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 90
    .local v8, "minSdk":I
    const/4 v4, 0x0

    const-string/jumbo v21, "maxsdk"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 91
    .local v9, "maxSdk":I
    if-eqz v14, :cond_4

    .line 93
    if-eqz v7, :cond_3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 94
    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 95
    :cond_3
    new-instance v3, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;-><init>(Ljava/lang/Object;IILjava/lang/String;II)V

    .line 97
    .local v3, "behaviorInfo":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    invoke-interface {v14, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v3    # "behaviorInfo":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    .end local v5    # "minVersion":I
    .end local v6    # "maxVersion":I
    .end local v7    # "brand":Ljava/lang/String;
    .end local v8    # "minSdk":I
    .end local v9    # "maxSdk":I
    .end local v12    # "behavior":Ljava/lang/String;
    .end local v18    # "stringValue":Ljava/lang/String;
    .end local v19    # "tag":Ljava/lang/String;
    :cond_4
    move-object v13, v14

    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v13    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_1

    .line 112
    .restart local v10    # "appName":Ljava/lang/String;
    .restart local v19    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v4

    const/16 v16, 0x0

    .restart local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto/16 :goto_3

    .line 119
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    invoke-interface {v4, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 106
    add-int/lit8 v4, v21, 0x1

    move/from16 v21, v4

    goto/16 :goto_2

    .line 121
    .end local v10    # "appName":Ljava/lang/String;
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    const/4 v13, 0x0

    :cond_7
    move-object v14, v13

    .line 123
    .end local v13    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_0

    .line 126
    .end local v19    # "tag":Ljava/lang/String;
    :cond_8
    if-eqz v20, :cond_1

    .line 127
    :try_start_8
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_6

    .line 135
    .end local v11    # "appNameString":Ljava/lang/String;
    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v15    # "event":I
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v4

    goto/16 :goto_6

    .line 126
    .restart local v11    # "appNameString":Ljava/lang/String;
    .restart local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v4

    move-object v13, v14

    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v13    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_5

    .restart local v15    # "event":I
    :cond_9
    move-object v14, v13

    .end local v13    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_0
.end method

.method private getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "behaviorName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "behavior":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 332
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "behavior":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    check-cast v0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    .line 334
    .restart local v0    # "behavior":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "value":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_2

    .end local v1    # "value":Ljava/lang/Object;
    :goto_1
    return-object v1

    :cond_1
    move-object v1, p2

    .line 334
    goto :goto_0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    move-object v1, p2

    .line 335
    goto :goto_1
.end method


# virtual methods
.method public forceTypeNullForBackspace()Z
    .locals 2

    .prologue
    .line 214
    const-string/jumbo v0, "forceTypeNullForBackspace"

    const/4 v1, 0x0

    .line 215
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ignoreTypeNullCheckForBackspace()Z
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "ignoreTypeNullCheckForBackspace"

    const/4 v1, 0x0

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public noContextMenuEditing()Z
    .locals 2

    .prologue
    .line 320
    const-string/jumbo v0, "noContextMenuEditing"

    const/4 v1, 0x0

    .line 321
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 320
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public noReplacingReselectedWordWhenMatching()Z
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v0, "noReplacingReselectedWordWhenMatching"

    const/4 v1, 0x0

    .line 306
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 304
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public noSetSelection()Z
    .locals 2

    .prologue
    .line 325
    const-string/jumbo v0, "noSetSelection"

    const/4 v1, 0x0

    .line 326
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 325
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldEnablePredictionForPassword()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mForceByPassCache:Z

    .line 191
    return-void
.end method

.method public onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 147
    .local v0, "behaviors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    .line 149
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->updateEnabled(I)V

    goto :goto_0

    .line 143
    .end local v0    # "behaviors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 152
    :cond_0
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v2, 0x1

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mForceByPassCache:Z

    .line 162
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->swypePackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    .line 170
    iput-boolean v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mForceByPassCache:Z

    .line 175
    :cond_0
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldImeOptions:I

    .line 176
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldInputType:I

    .line 177
    return-void
.end method

.method public selectTextToReplace()Z
    .locals 2

    .prologue
    .line 274
    const-string/jumbo v0, "selectTextToReplace"

    const/4 v1, 0x0

    .line 275
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shoudDisablePredictionForEmailAddress()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 471
    const-string/jumbo v0, "shoudDisablePredictionForEmailAddress"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldInputType:I

    const/16 v2, 0x21

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldImeOptions:I

    const v2, 0x8000005

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public shouldAutoSpaceInUrlField()Z
    .locals 2

    .prologue
    .line 221
    const-string/jumbo v0, "shouldAutoSpaceInUrlField"

    const/4 v1, 0x0

    .line 222
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 221
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldAutoSpaceOnTextExtractFailure()Z
    .locals 2

    .prologue
    .line 197
    const-string/jumbo v0, "shouldAutoSpaceOnTextExtractFailure"

    const/4 v1, 0x0

    .line 198
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldAvoidSetComposingRegion()Z
    .locals 2

    .prologue
    .line 295
    const-string/jumbo v0, "shouldAvoidSetComposingRegion"

    const/4 v1, 0x0

    .line 296
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 295
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldByPassInternalCache()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-boolean v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mForceByPassCache:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "shouldByPassInternalCache"

    .line 270
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 269
    invoke-direct {p0, v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public shouldCheckCurrentCursor()Z
    .locals 2

    .prologue
    .line 261
    const-string/jumbo v0, "shouldCheckCurrentCursor"

    const/4 v1, 0x0

    .line 262
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldCheckSmileyWhenDeleting()Z
    .locals 2

    .prologue
    .line 434
    const-string/jumbo v0, "shouldCheckSmileyWhenDeleting"

    const/4 v1, 0x0

    .line 435
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 434
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldClearComposingAddDeleteSpace()Z
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "shouldClearComposingAddDeleteSpace"

    const/4 v1, 0x0

    .line 311
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldDeleteSurroundingBeforeTextCharByChar()Z
    .locals 2

    .prologue
    .line 359
    const-string/jumbo v0, "shouldDeleteSurroundingBeforeTextCharByChar"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldDeleteSurroundingTextUsingKeyEvent()Z
    .locals 2

    .prologue
    .line 351
    const-string/jumbo v0, "shouldDeleteSurroundingTextUsingKeyEvent"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldDisableCandidatesList()Z
    .locals 2

    .prologue
    .line 237
    const-string/jumbo v0, "shouldDisableCandidatesList"

    const/4 v1, 0x0

    .line 238
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldDisableEmojiCandidatesList()Z
    .locals 2

    .prologue
    .line 245
    const-string/jumbo v0, "shouldDisableEmojiCandidatesList"

    const/4 v1, 0x0

    .line 246
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 245
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldDisableRecapture()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 229
    const-string/jumbo v0, "shouldDisableRecapture"

    .line 230
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 229
    invoke-direct {p0, v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->shouldSkipWrongStartInputView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public shouldEditModeUseAlternativeSelectMethod()Z
    .locals 2

    .prologue
    .line 423
    const-string/jumbo v0, "shouldEditModeUseAlternativeSelectMethod"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldEnablePredictionForPassword()Z
    .locals 2

    .prologue
    .line 419
    const-string/jumbo v0, "shouldEnablePredictionForPassword"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldFilterInputViewRestarts()Z
    .locals 2

    .prologue
    .line 282
    const-string/jumbo v0, "shouldFilterInputViewRestarts"

    const/4 v1, 0x0

    .line 283
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 282
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldIgnoreLostComposingText()Z
    .locals 2

    .prologue
    .line 253
    const-string/jumbo v0, "shouldIgnoreLostComposingText"

    const/4 v1, 0x0

    .line 254
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldMonitoringCursorChange()Z
    .locals 2

    .prologue
    .line 446
    const-string/jumbo v0, "shouldMonitoringCursorChange"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldRecaptureForCaseEdit()Z
    .locals 2

    .prologue
    .line 462
    const-string/jumbo v0, "shouldRecaptureForCaseEdit"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldRecaptureForSingleTapWhenFocusInURLField()Z
    .locals 2

    .prologue
    .line 458
    const-string/jumbo v0, "shouldRecaptureForSingleTapWhenFocusInURLField"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldRecaptureForSwypeKey()Z
    .locals 2

    .prologue
    .line 466
    const-string/jumbo v0, "shouldRecaptureForSwypeKey"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldRemoveUpdateWCLMessage()Z
    .locals 2

    .prologue
    .line 377
    const-string/jumbo v0, "shouldRemoveUpdateWCLMessage"

    const/4 v1, 0x0

    .line 378
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 377
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldRestrictGetTextLengthFromCursor()Z
    .locals 2

    .prologue
    .line 450
    const-string/jumbo v0, "shouldRestrictGetTextLengthFromCursor"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldSendBackSpaceToDeleteBreakLine()Z
    .locals 2

    .prologue
    .line 367
    const-string/jumbo v0, "shouldSendBackSpaceToDeleteBreakLine"

    const/4 v1, 0x0

    .line 368
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 367
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldSendReturnAsKeyEvent()Z
    .locals 2

    .prologue
    .line 347
    const-string/jumbo v0, "shouldSendReturnAsKeyEvent"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldSetComosingSpan()Z
    .locals 2

    .prologue
    .line 315
    const-string/jumbo v0, "shouldSetComposingSpan"

    const/4 v1, 0x0

    .line 316
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldSkipInvalidFieldIdEditor()Z
    .locals 2

    .prologue
    .line 409
    const-string/jumbo v0, "shouldSkipInvalidFieldIdEditor"

    const/4 v1, 0x0

    .line 410
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 409
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldSkipWrongStartInputView()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 440
    const-string/jumbo v0, "shouldSkipWrongStartInputView"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldImeOptions:I

    const v2, 0x44000006    # 512.00037f

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->mInputFieldInputType:I

    const v2, 0x20001

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public shouldTreatEditTextAsInvalidField()Z
    .locals 2

    .prologue
    .line 387
    const-string/jumbo v0, "shouldTreatEditTextAsInvalidField"

    const/4 v1, 0x0

    .line 388
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 387
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldTreatEditTextAsWebSearchField()Z
    .locals 2

    .prologue
    .line 397
    const-string/jumbo v0, "shouldTreatEditTextAsWebSearchField"

    const/4 v1, 0x0

    .line 398
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 397
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public shouldUseSearchRecognizerTypeForUrl()Z
    .locals 2

    .prologue
    .line 290
    const-string/jumbo v0, "shouldUseSearchRecognizerTypeForUrl"

    const/4 v1, 0x0

    .line 291
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 290
    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public supportsGetTextWithStyles()Z
    .locals 2

    .prologue
    .line 343
    const-string/jumbo v0, "supportsGetTextWithStyles"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public useBackspaceKeyToClearHighlightedText()Z
    .locals 2

    .prologue
    .line 454
    const-string/jumbo v0, "useBackspaceKeyToClearHighlightedText"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
