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

.field private defaultCustomWordsSync:Z

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
    .registers 1

    .prologue
    .line 28
    const-string/jumbo v0, "SpeechInfo"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/SpeechInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 95
    sget v0, Lcom/nuance/swype/input/R$xml;->speech_info:I

    invoke-direct {p0, p1, v0}, Lcom/nuance/speech/SpeechInfo;-><init>(Landroid/content/Context;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speechInfoResId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->speechServerMap:Ljava/util/Map;

    .line 101
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v5

    .line 104
    .local v5, "inputmethods":Lcom/nuance/swype/input/InputMethods;
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 105
    .local v8, "res":Landroid/content/res/Resources;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_1d} :catch_b1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_192

    move-result-object v12

    .line 107
    .local v12, "xmlparser":Landroid/content/res/XmlResourceParser;
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "event":I
    const/4 v13, 0x1

    if-eq v4, v13, :cond_18b

    .line 108
    const/4 v13, 0x2

    if-ne v4, v13, :cond_1e

    .line 109
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "tag":Ljava/lang/String;
    const-string/jumbo v13, "speech_info"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b3

    .line 112
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    sget-object v14, Lcom/nuance/swype/input/R$styleable;->dragon_speech:[I

    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 114
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/nuance/swype/input/R$styleable;->dragon_speech_sync_custom_words:I

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultCustomWordsSync:Z

    .line 116
    sget-object v13, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getSpeechCmd(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultSpeechCmd:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 117
    sget-object v13, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getPartialResultsMode(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultResultMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 119
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    const/4 v13, 0x0

    const-string/jumbo v14, "app_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->appName:Ljava/lang/String;

    .line 123
    sget-object v13, Lcom/nuance/speech/SpeechInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "appName:"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/speech/SpeechInfo;->appName:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 125
    const/4 v13, 0x0

    const-string/jumbo v14, "default_gateway_ip_addr"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultServer:Ljava/lang/String;

    .line 127
    const/4 v13, 0x0

    const-string/jumbo v14, "default_port_id"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v13

    move-object/from16 v0, p0

    iput-short v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultPort:S
    :try_end_a8
    .catchall {:try_start_1e .. :try_end_a8} :catchall_aa

    goto/16 :goto_1e

    .line 195
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "event":I
    .end local v10    # "tag":Ljava/lang/String;
    :catchall_aa
    move-exception v13

    if-eqz v12, :cond_b0

    .line 196
    :try_start_ad
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b0
    throw v13
    :try_end_b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ad .. :try_end_b1} :catch_b1
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b1} :catch_192

    .line 201
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_b1
    move-exception v13

    :cond_b2
    :goto_b2
    return-void

    .line 130
    .restart local v4    # "event":I
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :cond_b3
    :try_start_b3
    const-string/jumbo v13, "language"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 131
    new-instance v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;

    invoke-direct {v9}, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;-><init>()V

    .line 133
    .local v9, "server":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    sget-object v14, Lcom/nuance/swype/input/R$styleable;->dragon_speech:[I

    invoke-virtual {v8, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 135
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/nuance/swype/input/R$styleable;->dragon_speech_sync_custom_words:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/nuance/speech/SpeechInfo;->defaultCustomWordsSync:Z

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->isCustomWordsSyncSupport:Z

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultSpeechCmd:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getSpeechCmd(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->speechCommand:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultResultMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/nuance/speech/SpeechInfo;->getPartialResultsMode(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->responseMode:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 140
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    const/4 v13, 0x0

    const-string/jumbo v14, "lang_code"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langCode:Ljava/lang/String;

    .line 143
    const/4 v13, 0x0

    const-string/jumbo v14, "lang_server"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    .line 144
    iget-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_114

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultServer:Ljava/lang/String;

    iput-object v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->server:Ljava/lang/String;

    .line 148
    :cond_114
    const/4 v13, 0x0

    const-string/jumbo v14, "port"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, "value":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_17c

    .line 150
    move-object/from16 v0, p0

    iget-short v13, v0, Lcom/nuance/speech/SpeechInfo;->defaultPort:S

    iput-short v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->port:S

    .line 155
    :goto_128
    const/4 v13, 0x0

    const-string/jumbo v14, "lang_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "langName":Ljava/lang/String;
    const/4 v13, 0x0

    const-string/jumbo v14, "display_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "displayName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods;->getAllLanguages()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    .line 168
    .local v6, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_14c

    .line 169
    if-eqz v6, :cond_187

    .line 170
    iget-object v3, v6, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    .line 175
    :cond_14c
    :goto_14c
    const/4 v13, 0x0

    const-string/jumbo v14, "abbr_display_name"

    invoke-interface {v12, v13, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "abbrDisplayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_15e

    .line 178
    if-eqz v6, :cond_189

    .line 179
    iget-object v2, v6, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    .line 185
    :cond_15e
    :goto_15e
    iput-object v7, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->langName:Ljava/lang/String;

    .line 186
    iput-object v3, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->displayName:Ljava/lang/String;

    .line 187
    iput-object v2, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->abbrDisplayName:Ljava/lang/String;

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/speech/SpeechInfo;->speechServerMap:Ljava/util/Map;

    invoke-interface {v13, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v13, Lcom/nuance/speech/SpeechInfo;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v9}, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 152
    .end local v2    # "abbrDisplayName":Ljava/lang/String;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v6    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "langName":Ljava/lang/String;
    :cond_17c
    invoke-static {v11}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Short;->shortValue()S

    move-result v13

    iput-short v13, v9, Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;->port:S
    :try_end_186
    .catchall {:try_start_b3 .. :try_end_186} :catchall_aa

    goto :goto_128

    .line 172
    .restart local v3    # "displayName":Ljava/lang/String;
    .restart local v6    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v7    # "langName":Ljava/lang/String;
    :cond_187
    move-object v3, v7

    goto :goto_14c

    .line 181
    .restart local v2    # "abbrDisplayName":Ljava/lang/String;
    :cond_189
    move-object v2, v3

    goto :goto_15e

    .line 195
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "abbrDisplayName":Ljava/lang/String;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v6    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "langName":Ljava/lang/String;
    .end local v9    # "server":Lcom/nuance/speech/SpeechInfo$SpeechServerInfo;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_18b
    if-eqz v12, :cond_b2

    .line 196
    :try_start_18d
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18d .. :try_end_190} :catch_b1
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_192

    goto/16 :goto_b2

    .line 201
    .end local v4    # "event":I
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v12    # "xmlparser":Landroid/content/res/XmlResourceParser;
    :catch_192
    move-exception v13

    goto/16 :goto_b2
.end method

.method private getPartialResultsMode(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;)Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "defaultValue"    # Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 220
    sget v1, Lcom/nuance/swype/input/R$styleable;->dragon_speech_speech_result_mode:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 221
    packed-switch v1, :pswitch_data_22

    .line 244
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->NO_PARTIAL_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 247
    .local v0, "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :goto_c
    return-object v0

    .line 223
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_d
    move-object v0, p2

    .line 224
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_c

    .line 226
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_f
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_DEFAULT:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 227
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_c

    .line 229
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_12
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_VERY_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 230
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_c

    .line 232
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_15
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AGRESSIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 233
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_c

    .line 235
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_18
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_AVERAGE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 236
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_c

    .line 238
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_1b
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->UTTERANCE_DETECTION_CONSERVATIVE:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 239
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_c

    .line 241
    .end local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    :pswitch_1e
    sget-object v0, Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;->CONTINUOUS_STREAMING_RESULTS:Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;

    .line 242
    .restart local v0    # "resultMode":Lcom/nuance/nmdp/speechkit/SpeechKit$PartialResultsMode;
    goto :goto_c

    .line 221
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method

.method private getSpeechCmd(Landroid/content/res/TypedArray;Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;)Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .registers 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "defaultValue"    # Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 205
    sget v1, Lcom/nuance/swype/input/R$styleable;->dragon_speech_speech_cmd:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 206
    .local v0, "value":I
    if-nez v0, :cond_a

    .line 214
    .end local p2    # "defaultValue":Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    :goto_9
    return-object p2

    .line 210
    .restart local p2    # "defaultValue":Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;
    :cond_a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 211
    sget-object p2, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->DRAGON_NLU:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    goto :goto_9

    .line 214
    :cond_10
    sget-object p2, Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;->NVC:Lcom/nuance/nmdp/speechkit/SpeechKit$CmdSetType;

    goto :goto_9
.end method

.method public static makeInstance(Landroid/content/Context;)Lcom/nuance/speech/SpeechInfo;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    new-instance v0, Lcom/nuance/speech/SpeechInfo;

    invoke-direct {v0, p0}, Lcom/nuance/speech/SpeechInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nuance/speech/SpeechInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeechInfoTable()Ljava/util/Map;
    .registers 3
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
    .line 255
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/nuance/speech/SpeechInfo;->speechServerMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
