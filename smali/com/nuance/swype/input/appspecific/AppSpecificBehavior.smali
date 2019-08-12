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

.field public static final DEFAULT_DISABLE_RECAPTURE:Z

.field public static final DEFAULT_FILTER_INPUTVIEW_RESTARTS:Z

.field public static final DEFAULT_FORCE_TYPE_NULL_FOR_BACK_SPACE:Z

.field public static final DEFAULT_IGNORE_LOST_COMPOSING_TEXT:Z

.field public static final DEFAULT_IGNORE_TYPE_NULL_CHECK_FOR_BACKSPACE:Z

.field public static final DEFAULT_NO_CONTEXT_MENU_EDITING:Z

.field public static final DEFAULT_NO_REPLACING_RESELECTED_WORD_WHEN_MATCHING:Z

.field public static final DEFAULT_NO_SET_SELECTION:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    .line 58
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v25, Lcom/nuance/swype/input/R$xml;->app_specific:I

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v24

    .line 59
    .local v24, "xmlparser":Landroid/content/res/XmlResourceParser;
    const/4 v14, 0x0

    .line 60
    .local v14, "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v21

    .line 61
    .local v21, "pm":Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    .line 63
    .local v20, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v11, 0x0

    .local v11, "appNameString":Ljava/lang/String;
    move-object v15, v14

    .line 65
    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .local v15, "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    :goto_0
    :try_start_1
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v16

    .local v16, "event":I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_8

    .line 66
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 67
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 68
    .local v23, "tag":Ljava/lang/String;
    const-string v4, "application"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    const/4 v4, 0x0

    const-string v25, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .end local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v23    # "tag":Ljava/lang/String;
    .restart local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    :goto_1
    const/4 v4, 0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_9

    .line 93
    :try_start_2
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 94
    .restart local v23    # "tag":Ljava/lang/String;
    const-string v4, "application"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v14, :cond_7

    .line 95
    const-string v4, ";"

    invoke-virtual {v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    move/from16 v18, v17

    .end local v17    # "i$":I
    .local v18, "i$":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    aget-object v4, v12, v18

    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 99
    .local v10, "appName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v20

    .line 104
    :goto_3
    if-eqz v20, :cond_5

    .line 105
    :try_start_4
    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v18    # "i$":I
    .local v17, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    .line 106
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->updateEnabled(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 116
    .end local v10    # "appName":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "len$":I
    .end local v23    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .end local v16    # "event":I
    :goto_5
    if-eqz v24, :cond_0

    .line 117
    :try_start_5
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v4
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 124
    .end local v11    # "appNameString":Ljava/lang/String;
    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    .line 125
    :cond_1
    :goto_6
    return-void

    .line 71
    .restart local v11    # "appNameString":Ljava/lang/String;
    .restart local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v16    # "event":I
    .restart local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v23    # "tag":Ljava/lang/String;
    .restart local v24    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :cond_2
    :try_start_6
    const-string v4, "override"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    const/4 v4, 0x0

    const-string v25, "behavior"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 73
    .local v13, "behavior":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v25, "value"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 74
    .local v22, "stringValue":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v25, "brand"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "brand":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v25, "minVersion"

    const/16 v26, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 77
    .local v5, "minVersion":I
    const/4 v4, 0x0

    const-string v25, "maxVersion"

    const/16 v26, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 79
    .local v6, "maxVersion":I
    const/4 v4, 0x0

    const-string v25, "minsdk"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 80
    .local v8, "minSdk":I
    const/4 v4, 0x0

    const-string v25, "maxsdk"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v4, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 81
    .local v9, "maxSdk":I
    if-eqz v15, :cond_4

    .line 83
    if-eqz v7, :cond_3

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    :cond_3
    new-instance v3, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;-><init>(Ljava/lang/Object;IILjava/lang/String;II)V

    .line 87
    .local v3, "behaviorInfo":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    invoke-interface {v15, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v3    # "behaviorInfo":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    .end local v5    # "minVersion":I
    .end local v6    # "maxVersion":I
    .end local v7    # "brand":Ljava/lang/String;
    .end local v8    # "minSdk":I
    .end local v9    # "maxSdk":I
    .end local v13    # "behavior":Ljava/lang/String;
    .end local v22    # "stringValue":Ljava/lang/String;
    .end local v23    # "tag":Ljava/lang/String;
    :cond_4
    move-object v14, v15

    .end local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_1

    .line 102
    .restart local v10    # "appName":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v18    # "i$":I
    .restart local v19    # "len$":I
    .restart local v23    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v4

    const/16 v20, 0x0

    goto/16 :goto_3

    .line 109
    .end local v18    # "i$":I
    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    invoke-interface {v4, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 96
    add-int/lit8 v17, v18, 0x1

    .local v17, "i$":I
    move/from16 v18, v17

    .end local v17    # "i$":I
    .restart local v18    # "i$":I
    goto/16 :goto_2

    .line 111
    .end local v10    # "appName":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    :cond_7
    move-object v15, v14

    .line 113
    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_0

    .line 116
    .end local v23    # "tag":Ljava/lang/String;
    :cond_8
    if-eqz v24, :cond_1

    .line 117
    :try_start_8
    invoke-interface/range {v24 .. v24}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_6

    .line 125
    .end local v11    # "appNameString":Ljava/lang/String;
    .end local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v16    # "event":I
    .end local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v4

    goto/16 :goto_6

    .line 116
    .restart local v11    # "appNameString":Ljava/lang/String;
    .restart local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v20    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v4

    move-object v14, v15

    .end local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_5

    .restart local v16    # "event":I
    :cond_9
    move-object v15, v14

    .end local v14    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .restart local v15    # "currentEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    goto/16 :goto_0
.end method

.method private getAppBehavior(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "behaviorName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "behavior":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "behavior":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    check-cast v0, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    .line 298
    .restart local v0    # "behavior":Lcom/nuance/swype/input/appspecific/BehaviorInfo;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 299
    .local v1, "value":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_2

    .end local v1    # "value":Ljava/lang/Object;
    :goto_1
    return-object v1

    :cond_1
    move-object v1, p2

    .line 298
    goto :goto_0

    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    move-object v1, p2

    .line 299
    goto :goto_1
.end method


# virtual methods
.method public forceTypeNullForBackspace()Z
    .locals 2

    .prologue
    .line 186
    const-string v0, "forceTypeNullForBackspace"

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

.method public ignoreTypeNullCheckForBackspace()Z
    .locals 2

    .prologue
    .line 178
    const-string v0, "ignoreTypeNullCheckForBackspace"

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

.method public noContextMenuEditing()Z
    .locals 2

    .prologue
    .line 284
    const-string v0, "noContextMenuEditing"

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

.method public noReplacingReselectedWordWhenMatching()Z
    .locals 2

    .prologue
    .line 268
    const-string v0, "noReplacingReselectedWordWhenMatching"

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

.method public noSetSelection()Z
    .locals 2

    .prologue
    .line 289
    const-string v0, "noSetSelection"

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

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    .line 163
    return-void
.end method

.method public onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 137
    .local v0, "behaviors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/appspecific/BehaviorInfo;

    .line 139
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/appspecific/BehaviorInfo;->updateEnabled(I)V

    goto :goto_0

    .line 133
    .end local v0    # "behaviors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/appspecific/BehaviorInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 142
    :cond_0
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 151
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->behavior_map:Ljava/util/Map;

    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/nuance/swype/input/appspecific/AppSpecificBehavior;->currentBehaviorOverride:Ljava/util/Map;

    .line 154
    :cond_0
    return-void
.end method

.method public selectTextToReplace()Z
    .locals 2

    .prologue
    .line 238
    const-string v0, "selectTextToReplace"

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

.method public shouldAutoSpaceInUrlField()Z
    .locals 2

    .prologue
    .line 193
    const-string v0, "shouldAutoSpaceInUrlField"

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

.method public shouldAutoSpaceOnTextExtractFailure()Z
    .locals 2

    .prologue
    .line 169
    const-string v0, "shouldAutoSpaceOnTextExtractFailure"

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

.method public shouldAvoidSetComposingRegion()Z
    .locals 2

    .prologue
    .line 259
    const-string v0, "shouldAvoidSetComposingRegion"

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

.method public shouldByPassInternalCache()Z
    .locals 2

    .prologue
    .line 233
    const-string v0, "shouldByPassInternalCache"

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

.method public shouldCheckCurrentCursor()Z
    .locals 2

    .prologue
    .line 225
    const-string v0, "shouldCheckCurrentCursor"

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

.method public shouldCheckSmileyWhenDeleting()Z
    .locals 2

    .prologue
    .line 375
    const-string v0, "shouldCheckSmileyWhenDeleting"

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

.method public shouldClearComposingAddDeleteSpace()Z
    .locals 2

    .prologue
    .line 274
    const-string v0, "shouldClearComposingAddDeleteSpace"

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

.method public shouldDeleteSurroundingBeforeTextCharByChar()Z
    .locals 2

    .prologue
    .line 323
    const-string v0, "shouldDeleteSurroundingBeforeTextCharByChar"

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
    .line 315
    const-string v0, "shouldDeleteSurroundingTextUsingKeyEvent"

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
    .line 209
    const-string v0, "shouldDisableCandidatesList"

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

.method public shouldDisableRecapture()Z
    .locals 2

    .prologue
    .line 201
    const-string v0, "shouldDisableRecapture"

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
    .line 246
    const-string v0, "shouldFilterInputViewRestarts"

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

.method public shouldIgnoreLostComposingText()Z
    .locals 2

    .prologue
    .line 217
    const-string v0, "shouldIgnoreLostComposingText"

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
    .line 341
    const-string v0, "shouldRemoveUpdateWCLMessage"

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
    .line 331
    const-string v0, "shouldSendBackSpaceToDeleteBreakLine"

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

.method public shouldSendReturnAsKeyEvent()Z
    .locals 2

    .prologue
    .line 311
    const-string v0, "shouldSendReturnAsKeyEvent"

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
    .line 279
    const-string v0, "shouldSetComposingSpan"

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

.method public shouldSkipInvalidFieldIdEditor()Z
    .locals 2

    .prologue
    .line 363
    const-string v0, "shouldSkipInvalidFieldIdEditor"

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

.method public shouldTreatEditTextAsInvalidField()Z
    .locals 2

    .prologue
    .line 351
    const-string v0, "shouldTreatEditTextAsInvalidField"

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

.method public shouldUseSearchRecognizerTypeForUrl()Z
    .locals 2

    .prologue
    .line 254
    const-string v0, "shouldUseSearchRecognizerTypeForUrl"

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

.method public supportsGetTextWithStyles()Z
    .locals 2

    .prologue
    .line 307
    const-string v0, "supportsGetTextWithStyles"

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
