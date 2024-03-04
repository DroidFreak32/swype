.class public final Lcom/nuance/speech/SpeechInfo;
.super Ljava/lang/Object;
.source "SpeechInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    }
.end annotation


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private appName:Ljava/lang/String;

.field defaultCustomWordsSync:Z

.field defaultPort:S

.field defaultResultMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

.field defaultServer:Ljava/lang/String;

.field defaultSpeechCmd:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

.field private final speechServerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "SpeechInfo"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/SpeechInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget v0, Lcom/nuance/swype/input/R$xml;->speech_info:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/speech/SpeechInfo;-><init>(Landroid/content/Context;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speechInfoResId"    # I

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->speechServerMap:Ljava/util/Map;

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 105
    .local v5, "inputmethods":Lcom/nuance/swype/input/InputMethods;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 106
    .local v8, "res":Landroid/content/res/Resources;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 108
    .local v12, "xmlparser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "event":I
    const/4 v13, 0x1

    if-eq v4, v13, :cond_a

    .line 109
    const/4 v13, 0x2

    if-ne v4, v13, :cond_0

    .line 110
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, "tag":Ljava/lang/String;
    const-string v13, "speech_info"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 113
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    sget-object v14, Lcom/nuance/swype/input/R$styleable;->dragon_speech:[I

    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 115
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/nuance/swype/input/R$styleable;->dragon_speech_sync_custom_words:I

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultCustomWordsSync:Z

    .line 117
    sget-object v13, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getSpeechCmd(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultSpeechCmd:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 118
    sget-object v13, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getPartialResultsMode(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultResultMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 120
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    const/4 v13, 0x0

    const-string v14, "app_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->appName:Ljava/lang/String;

    .line 124
    sget-object v13, Lcom/nuance/speech/SpeechInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v14, "appName:"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/speech/SpeechInfo;->appName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    const/4 v13, 0x0

    const-string v14, "default_gateway_ip_addr"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultServer:Ljava/lang/String;

    .line 128
    const/4 v13, 0x0

    const-string v14, "default_port_id"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v13

    move-object/from16 v0, p0

    iput-short v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultPort:S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "event":I
    .end local v10    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v13

    if-eqz v12, :cond_1

    .line 197
    :try_start_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v13
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v13

    .line 205
    :cond_2
    :goto_1
    return-void

    .line 131
    .restart local v4    # "event":I
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :cond_3
    :try_start_3
    const-string v13, "language"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 132
    new-instance v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    invoke-direct {v9}, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;-><init>()V

    .line 134
    .local v9, "server":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    sget-object v14, Lcom/nuance/swype/input/R$styleable;->dragon_speech:[I

    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 136
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/nuance/swype/input/R$styleable;->dragon_speech_sync_custom_words:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nuance/speech/SpeechInfo;->defaultCustomWordsSync:Z

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->isCustomWordsSyncSupport:Z

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultSpeechCmd:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getSpeechCmd(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->speechCommand:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultResultMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getPartialResultsMode(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->responseMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 141
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    const/4 v13, 0x0

    const-string v14, "lang_code"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langCode:Ljava/lang/String;

    .line 144
    const/4 v13, 0x0

    const-string v14, "lang_server"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    .line 145
    iget-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultServer:Ljava/lang/String;

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    .line 149
    :cond_4
    const/4 v13, 0x0

    const-string v14, "port"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultPort:S

    iput-short v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->port:S

    .line 156
    :goto_2
    const/4 v13, 0x0

    const-string v14, "lang_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "langName":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "display_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "displayName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    .line 169
    .local v6, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 170
    if-eqz v6, :cond_8

    .line 171
    iget-object v3, v6, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    .line 176
    :cond_5
    :goto_3
    const/4 v13, 0x0

    const-string v14, "abbr_display_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "abbrDisplayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 179
    if-eqz v6, :cond_9

    .line 180
    iget-object v2, v6, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    .line 186
    :cond_6
    :goto_4
    iput-object v7, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langName:Ljava/lang/String;

    .line 187
    iput-object v3, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->displayName:Ljava/lang/String;

    .line 188
    iput-object v2, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->abbrDisplayName:Ljava/lang/String;

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->speechServerMap:Ljava/util/Map;

    invoke-interface {v13, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v13, Lcom/nuance/speech/SpeechInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v9}, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 153
    .end local v2    # "abbrDisplayName":Ljava/lang/String;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v6    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "langName":Ljava/lang/String;
    :cond_7
    invoke-static {v11}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v13

    iput-short v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->port:S
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 173
    .restart local v3    # "displayName":Ljava/lang/String;
    .restart local v6    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v7    # "langName":Ljava/lang/String;
    :cond_8
    move-object v3, v7

    goto :goto_3

    .line 182
    .restart local v2    # "abbrDisplayName":Ljava/lang/String;
    :cond_9
    move-object v2, v3

    goto :goto_4

    .line 196
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "abbrDisplayName":Ljava/lang/String;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v6    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "langName":Ljava/lang/String;
    .end local v9    # "server":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_a
    if-eqz v12, :cond_2

    .line 197
    :try_start_4
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 205
    .end local v4    # "event":I
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v13

    goto/16 :goto_1
.end method

.method private getPartialResultsMode(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "defaultValue"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .prologue
    .line 222
    sget v1, Lcom/nuance/swype/input/R$styleable;->dragon_speech_speech_result_mode:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 223
    packed-switch v1, :pswitch_data_0

    .line 246
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 249
    .local v0, "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :goto_0
    return-object v0

    .line 225
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_0
    move-object v0, p2

    .line 226
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_0

    .line 228
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_DEFAULT:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 229
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_0

    .line 231
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_2
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_VERY_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 232
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_0

    .line 234
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_3
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 235
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_0

    .line 237
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_4
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AVERAGE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 238
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_0

    .line 240
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_5
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_CONSERVATIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 241
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_0

    .line 243
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_6
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 244
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSpeechCmd(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "defaultValue"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .prologue
    .line 208
    sget v1, Lcom/nuance/swype/input/R$styleable;->dragon_speech_speech_cmd:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 209
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 217
    .end local p2    # "defaultValue":Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    :goto_0
    return-object p2

    .line 213
    .restart local p2    # "defaultValue":Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 214
    sget-object p2, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    goto :goto_0

    .line 217
    :cond_1
    sget-object p2, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    goto :goto_0
.end method

.method public static makeInstance(Landroid/content/Context;)Lcom/nuance/speech/SpeechInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    new-instance v0, Lcom/nuance/speech/SpeechInfo;

    invoke-direct {v0, p0}, Lcom/nuance/speech/SpeechInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nuance/speech/SpeechInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeechInfoTable()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/speech/SpeechInfo;->speechServerMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
