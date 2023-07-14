.class public Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Lcom/google/api/client/util/ObjectParser;


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final MEDIA_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->setCharsetParameter(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/UrlEncodedParser;->MEDIA_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/Reader;Ljava/lang/Object;)V
    .locals 22
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 129
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v3

    .line 130
    .local v3, "classInfo":Lcom/google/api/client/util/ClassInfo;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v4, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 131
    .local v6, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    const-class v20, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_1

    move-object/from16 v20, p1

    check-cast v20, Lcom/google/api/client/util/GenericData;

    move-object/from16 v8, v20

    .line 133
    .local v8, "genericData":Lcom/google/api/client/util/GenericData;
    :goto_0
    const-class v20, Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v20, p1

    check-cast v20, Ljava/util/Map;

    move-object/from16 v10, v20

    .line 134
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    new-instance v2, Lcom/google/api/client/util/ArrayValueMap;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/google/api/client/util/ArrayValueMap;-><init>(Ljava/lang/Object;)V

    .line 135
    .local v2, "arrayValueMap":Lcom/google/api/client/util/ArrayValueMap;
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 136
    .local v12, "nameWriter":Ljava/io/StringWriter;
    new-instance v19, Ljava/io/StringWriter;

    invoke-direct/range {v19 .. v19}, Ljava/io/StringWriter;-><init>()V

    .line 137
    .local v19, "valueWriter":Ljava/io/StringWriter;
    const/4 v15, 0x1

    .line 139
    .local v15, "readingName":Z
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/Reader;->read()I

    move-result v14

    .line 140
    .local v14, "read":I
    sparse-switch v14, :sswitch_data_0

    .line 204
    if-eqz v15, :cond_b

    .line 205
    invoke-virtual {v12, v14}, Ljava/io/StringWriter;->write(I)V

    goto :goto_2

    .line 131
    .end local v2    # "arrayValueMap":Lcom/google/api/client/util/ArrayValueMap;
    .end local v8    # "genericData":Lcom/google/api/client/util/GenericData;
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v12    # "nameWriter":Ljava/io/StringWriter;
    .end local v14    # "read":I
    .end local v15    # "readingName":Z
    .end local v19    # "valueWriter":Ljava/io/StringWriter;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 133
    .restart local v8    # "genericData":Lcom/google/api/client/util/GenericData;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 145
    .restart local v2    # "arrayValueMap":Lcom/google/api/client/util/ArrayValueMap;
    .restart local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v12    # "nameWriter":Ljava/io/StringWriter;
    .restart local v14    # "read":I
    .restart local v15    # "readingName":Z
    .restart local v19    # "valueWriter":Ljava/io/StringWriter;
    :sswitch_0
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_3

    .line 147
    invoke-virtual/range {v19 .. v19}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, "stringValue":Ljava/lang/String;
    invoke-virtual {v3, v11}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v7

    .line 150
    .local v7, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v7, :cond_8

    .line 1172
    iget-object v0, v7, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v20

    .line 151
    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 154
    .local v18, "type":Ljava/lang/reflect/Type;
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 156
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v13

    .line 2138
    .local v13, "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v7, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    move-object/from16 v20, v0

    .line 158
    move-object/from16 v0, v16

    invoke-static {v13, v6, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v13, v1}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 191
    .end local v7    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v13    # "rawArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "stringValue":Ljava/lang/String;
    .end local v18    # "type":Ljava/lang/reflect/Type;
    :cond_3
    :goto_3
    const/4 v15, 0x1

    .line 192
    new-instance v12, Ljava/io/StringWriter;

    .end local v12    # "nameWriter":Ljava/io/StringWriter;
    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 193
    .restart local v12    # "nameWriter":Ljava/io/StringWriter;
    new-instance v19, Ljava/io/StringWriter;

    .end local v19    # "valueWriter":Ljava/io/StringWriter;
    invoke-direct/range {v19 .. v19}, Ljava/io/StringWriter;-><init>()V

    .line 194
    .restart local v19    # "valueWriter":Ljava/io/StringWriter;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    .line 211
    invoke-virtual {v2}, Lcom/google/api/client/util/ArrayValueMap;->setValues()V

    .line 212
    return-void

    .line 160
    .restart local v7    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .restart local v16    # "stringValue":Ljava/lang/String;
    .restart local v18    # "type":Ljava/lang/reflect/Type;
    :cond_4
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v20

    const-class v21, Ljava/lang/Iterable;

    invoke-static/range {v20 .. v21}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 164
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 165
    .local v5, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v5, :cond_5

    .line 166
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v5

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v5}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    :cond_5
    const-class v20, Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v17, 0x0

    .line 170
    .local v17, "subFieldType":Ljava/lang/reflect/Type;
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 169
    .end local v17    # "subFieldType":Ljava/lang/reflect/Type;
    :cond_6
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    goto :goto_4

    .line 173
    .end local v5    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 175
    .end local v18    # "type":Ljava/lang/reflect/Type;
    :cond_8
    if-eqz v10, :cond_3

    .line 178
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 179
    .local v9, "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v9, :cond_9

    .line 180
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v9    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_a

    .line 182
    invoke-virtual {v8, v11, v9}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 187
    :cond_9
    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 184
    :cond_a
    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 200
    .end local v7    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v9    # "listValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "name":Ljava/lang/String;
    .end local v16    # "stringValue":Ljava/lang/String;
    :sswitch_1
    const/4 v15, 0x0

    .line 201
    goto/16 :goto_2

    .line 207
    :cond_b
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/StringWriter;->write(I)V

    goto/16 :goto_2

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x26 -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/io/Reader;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/api/client/util/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "valueType"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 216
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 222
    .local v0, "r":Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0, p3}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 227
    .local v0, "r":Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0, p3}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/UrlEncodedParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    instance-of v1, p2, Ljava/lang/Class;

    const-string/jumbo v2, "dataType has to be of type Class<?>"

    invoke-static {v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 239
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "dataType":Ljava/lang/reflect/Type;
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "newInstance":Ljava/lang/Object;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/io/Reader;Ljava/lang/Object;)V

    .line 241
    return-object v0
.end method
