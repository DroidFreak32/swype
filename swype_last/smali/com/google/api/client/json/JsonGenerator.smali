.class public abstract Lcom/google/api/client/json/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private serialize(ZLjava/lang/Object;)V
    .registers 23
    .param p1, "isJsonString"    # Z
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p2, :cond_3

    .line 177
    .end local p2    # "value":Ljava/lang/Object;
    :goto_2
    return-void

    .line 113
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 114
    .local v17, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    goto :goto_2

    .line 116
    :cond_11
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_23

    .line 117
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 118
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_23
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v18, v0

    if-eqz v18, :cond_e4

    .line 119
    if-eqz p1, :cond_39

    .line 120
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_39
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/math/BigDecimal;

    move/from16 v18, v0

    if-eqz v18, :cond_4b

    .line 122
    check-cast p2, Ljava/math/BigDecimal;

    .end local p2    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V

    goto :goto_2

    .line 123
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4b
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/math/BigInteger;

    move/from16 v18, v0

    if-eqz v18, :cond_5d

    .line 124
    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 125
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5d
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v18, v0

    if-eqz v18, :cond_73

    .line 126
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(J)V

    goto :goto_2

    .line 127
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_73
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v18, v0

    if-eqz v18, :cond_9c

    .line 128
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->floatValue()F

    move-result v11

    .line 129
    .local v11, "floatValue":F
    invoke-static {v11}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v18

    if-nez v18, :cond_99

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_99

    const/16 v18, 0x1

    .line 1037
    :goto_8f
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(F)V

    goto/16 :goto_2

    .line 129
    :cond_99
    const/16 v18, 0x0

    goto :goto_8f

    .line 131
    .end local v11    # "floatValue":F
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_9c
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v18, v0

    if-nez v18, :cond_b4

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Short;

    move/from16 v18, v0

    if-nez v18, :cond_b4

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Byte;

    move/from16 v18, v0

    if-eqz v18, :cond_c3

    .line 132
    :cond_b4
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(I)V

    goto/16 :goto_2

    .line 134
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_c3
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    .line 135
    .local v6, "doubleValue":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v18

    if-nez v18, :cond_e1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-nez v18, :cond_e1

    const/16 v18, 0x1

    .line 2037
    :goto_d7
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 136
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/api/client/json/JsonGenerator;->writeNumber(D)V

    goto/16 :goto_2

    .line 135
    :cond_e1
    const/16 v18, 0x0

    goto :goto_d7

    .line 138
    .end local v6    # "doubleValue":D
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_e4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v18, v0

    if-eqz v18, :cond_fb

    .line 139
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_2

    .line 140
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_fb
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/google/api/client/util/DateTime;

    move/from16 v18, v0

    if-eqz v18, :cond_112

    .line 141
    check-cast p2, Lcom/google/api/client/util/DateTime;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_112
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v18, v0

    if-nez v18, :cond_120

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isArray()Z

    move-result v18

    if-eqz v18, :cond_144

    .line 143
    :cond_120
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartArray()V

    .line 144
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_12b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 145
    .local v16, "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    goto :goto_12b

    .line 147
    .end local v16    # "o":Ljava/lang/Object;
    :cond_13f
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndArray()V

    goto/16 :goto_2

    .line 148
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_144
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->isEnum()Z

    move-result v18

    if-eqz v18, :cond_162

    .line 149
    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v18

    .line 2153
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 150
    .local v15, "name":Ljava/lang/String;
    if-nez v15, :cond_15b

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonGenerator;->writeNull()V

    goto/16 :goto_2

    .line 153
    :cond_15b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/api/client/json/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 156
    .end local v15    # "name":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_162
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonGenerator;->writeStartObject()V

    .line 158
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v18, v0

    if-eqz v18, :cond_1ac

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/google/api/client/util/GenericData;

    move/from16 v18, v0

    if-nez v18, :cond_1ac

    const/4 v14, 0x1

    .line 159
    .local v14, "isMapNotGenericData":Z
    :goto_176
    if-eqz v14, :cond_1ae

    const/4 v4, 0x0

    .line 160
    .local v4, "classInfo":Lcom/google/api/client/util/ClassInfo;
    :goto_179
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_185
    :goto_185
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1cf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 161
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 162
    .local v10, "fieldValue":Ljava/lang/Object;
    if-eqz v10, :cond_185

    .line 163
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 165
    .local v9, "fieldName":Ljava/lang/String;
    if-eqz v14, :cond_1b3

    move/from16 v13, p1

    .line 171
    .local v13, "isJsonStringForField":Z
    :goto_1a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/api/client/json/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    goto :goto_185

    .line 158
    .end local v4    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isJsonStringForField":Z
    .end local v14    # "isMapNotGenericData":Z
    :cond_1ac
    const/4 v14, 0x0

    goto :goto_176

    .line 159
    .restart local v14    # "isMapNotGenericData":Z
    :cond_1ae
    invoke-static/range {v17 .. v17}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v4

    goto :goto_179

    .line 3138
    .restart local v4    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldName":Ljava/lang/String;
    .restart local v10    # "fieldValue":Ljava/lang/Object;
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_1b3
    invoke-virtual {v4, v9}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v18

    .line 3139
    if-nez v18, :cond_1c8

    const/4 v8, 0x0

    .line 169
    .local v8, "field":Ljava/lang/reflect/Field;
    :goto_1ba
    if-eqz v8, :cond_1cd

    const-class v18, Lcom/google/api/client/json/JsonString;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    if-eqz v18, :cond_1cd

    const/4 v13, 0x1

    goto :goto_1a1

    .line 4138
    .end local v8    # "field":Ljava/lang/reflect/Field;
    :cond_1c8
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    goto :goto_1ba

    .line 169
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    :cond_1cd
    const/4 v13, 0x0

    goto :goto_1a1

    .line 175
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "fieldValue":Ljava/lang/Object;
    :cond_1cf
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonGenerator;->writeEndObject()V

    goto/16 :goto_2
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public enablePrettyPrint()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public final serialize(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/api/client/json/JsonGenerator;->serialize(ZLjava/lang/Object;)V

    .line 107
    return-void
.end method

.method public abstract writeBoolean(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeEndObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFieldName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNull()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigDecimal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeNumber(Ljava/math/BigInteger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartArray()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeStartObject()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
