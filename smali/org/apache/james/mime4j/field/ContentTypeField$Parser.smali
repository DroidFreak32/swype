.class public Lorg/apache/james/mime4j/field/ContentTypeField$Parser;
.super Ljava/lang/Object;
.source "ContentTypeField.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/ContentTypeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    const-class v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    .line 209
    const/4 v8, 0x0

    .line 213
    .local v8, "parameters":Ljava/util/Map;
    new-instance v10, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;

    new-instance v13, Ljava/io/StringReader;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v13}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;-><init>(Ljava/io/Reader;)V

    .line 215
    .local v10, "parser":Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;
    :try_start_0
    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getType()Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, "type":Ljava/lang/String;
    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v11

    .line 234
    .local v11, "subType":Ljava/lang/String;
    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    .line 235
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getSubType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 237
    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamNames()Ljava/util/ArrayList;

    move-result-object v5

    .line 238
    .local v5, "paramNames":Ljava/util/ArrayList;
    invoke-virtual {v10}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParser;->getParamValues()Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 240
    .local v7, "paramValues":Ljava/util/ArrayList;
    if-eqz v5, :cond_2

    if-eqz v7, :cond_2

    .line 241
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v9, v8

    .end local v8    # "parameters":Ljava/util/Map;
    .local v9, "parameters":Ljava/util/Map;
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 242
    if-nez v9, :cond_3

    .line 243
    new-instance v8, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    int-to-double v14, v13

    const-wide v16, 0x3ff4cccccccccccdL    # 1.3

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    double-to-int v13, v14

    invoke-direct {v8, v13}, Ljava/util/HashMap;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 244
    .end local v9    # "parameters":Ljava/util/Map;
    .restart local v8    # "parameters":Ljava/util/Map;
    :goto_2
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 245
    .local v4, "paramName":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 246
    .local v6, "paramValue":Ljava/lang/String;
    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 241
    add-int/lit8 v3, v3, 0x1

    move-object v9, v8

    .end local v8    # "parameters":Ljava/util/Map;
    .restart local v9    # "parameters":Ljava/util/Map;
    goto :goto_1

    .line 217
    .end local v3    # "i":I
    .end local v4    # "paramName":Ljava/lang/String;
    .end local v5    # "paramNames":Ljava/util/ArrayList;
    .end local v6    # "paramValue":Ljava/lang/String;
    .end local v7    # "paramValues":Ljava/util/ArrayList;
    .end local v9    # "parameters":Ljava/util/Map;
    .end local v11    # "subType":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    .restart local v8    # "parameters":Ljava/util/Map;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    sget-object v13, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 219
    sget-object v13, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Parsing value \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\': "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 223
    .end local v2    # "e":Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
    :catch_1
    move-exception v2

    .line 224
    .local v2, "e":Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    sget-object v13, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 225
    sget-object v13, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;->log:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Parsing value \'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\': "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 227
    :cond_1
    new-instance v13, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    .end local v2    # "e":Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
    :catch_2
    move-exception v13

    .line 253
    :cond_2
    :goto_3
    new-instance v13, Lorg/apache/james/mime4j/field/ContentTypeField;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/james/mime4j/field/ContentTypeField;-><init>(Ljava/lang/String;)V

    return-object v13

    .line 251
    .end local v8    # "parameters":Ljava/util/Map;
    .restart local v3    # "i":I
    .restart local v5    # "paramNames":Ljava/util/ArrayList;
    .restart local v7    # "paramValues":Ljava/util/ArrayList;
    .restart local v9    # "parameters":Ljava/util/Map;
    .restart local v11    # "subType":Ljava/lang/String;
    .restart local v12    # "type":Ljava/lang/String;
    :catch_3
    move-exception v13

    move-object v8, v9

    .end local v9    # "parameters":Ljava/util/Map;
    .restart local v8    # "parameters":Ljava/util/Map;
    goto :goto_3

    .end local v8    # "parameters":Ljava/util/Map;
    .restart local v9    # "parameters":Ljava/util/Map;
    :cond_3
    move-object v8, v9

    .end local v9    # "parameters":Ljava/util/Map;
    .restart local v8    # "parameters":Ljava/util/Map;
    goto/16 :goto_2

    .end local v8    # "parameters":Ljava/util/Map;
    .restart local v9    # "parameters":Ljava/util/Map;
    :cond_4
    move-object v8, v9

    .end local v9    # "parameters":Ljava/util/Map;
    .restart local v8    # "parameters":Ljava/util/Map;
    goto :goto_3
.end method
