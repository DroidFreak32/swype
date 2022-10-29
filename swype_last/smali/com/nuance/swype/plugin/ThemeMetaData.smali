.class public final Lcom/nuance/swype/plugin/ThemeMetaData;
.super Ljava/lang/Object;
.source "ThemeMetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;
    }
.end annotation


# instance fields
.field themeStyleName:Ljava/lang/String;

.field final themeStyleableName:Ljava/lang/String;

.field public final wordListMetadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/res/XmlResourceParser;)V
    .registers 9
    .param p1, "paramXmlResourceParser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v3, "SwypeThemeTemplate"

    iput-object v3, p0, Lcom/nuance/swype/plugin/ThemeMetaData;->themeStyleableName:Ljava/lang/String;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/plugin/ThemeMetaData;->wordListMetadataList:Ljava/util/List;

    .line 22
    :try_start_f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 23
    .local v0, "eventType":I
    const/4 v1, 0x0

    .line 24
    .local v1, "strTag":Ljava/lang/String;
    :goto_14
    const/4 v3, 0x1

    if-eq v0, v3, :cond_53

    .line 26
    packed-switch v0, :pswitch_data_ce

    .line 56
    :cond_1a
    :goto_1a
    :pswitch_1a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_14

    .line 29
    :pswitch_1f
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string/jumbo v3, "wordlist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1065
    new-instance v2, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;

    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "version"

    .line 1066
    invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "file"

    .line 1067
    invoke-interface {p1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v2, "wordListMetadata":Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;
    iget-object v3, p0, Lcom/nuance/swype/plugin/ThemeMetaData;->wordListMetadataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_4e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4e} :catch_b8

    goto :goto_1a

    .line 60
    .end local v0    # "eventType":I
    .end local v1    # "strTag":Ljava/lang/String;
    .end local v2    # "wordListMetadata":Lcom/nuance/swype/plugin/ThemeMetaData$WordListMetadata;
    :catch_4f
    move-exception v3

    :goto_50
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_53
    return-void

    .line 38
    .restart local v0    # "eventType":I
    .restart local v1    # "strTag":Ljava/lang/String;
    :pswitch_54
    if-eqz v1, :cond_1a

    :try_start_56
    const-string/jumbo v3, "id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "name"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "description"

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "snapshot"

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "version"

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "date"

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string/jumbo v3, "author"

    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 45
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_d8

    :cond_9d
    :goto_9d
    packed-switch v3, :pswitch_data_de

    .line 50
    const-string/jumbo v3, "ThemeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unknown tag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 60
    .end local v0    # "eventType":I
    .end local v1    # "strTag":Ljava/lang/String;
    :catch_b8
    move-exception v3

    goto :goto_50

    .line 45
    .restart local v0    # "eventType":I
    .restart local v1    # "strTag":Ljava/lang/String;
    :pswitch_ba
    const-string/jumbo v4, "theme"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const/4 v3, 0x0

    goto :goto_9d

    .line 47
    :pswitch_c5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/plugin/ThemeMetaData;->themeStyleName:Ljava/lang/String;
    :try_end_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_cb} :catch_4f
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_cb} :catch_b8

    goto/16 :goto_1a

    .line 26
    nop

    :pswitch_data_ce
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1a
        :pswitch_54
    .end packed-switch

    .line 45
    :pswitch_data_d8
    .packed-switch 0x69375c9
        :pswitch_ba
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_c5
    .end packed-switch
.end method
