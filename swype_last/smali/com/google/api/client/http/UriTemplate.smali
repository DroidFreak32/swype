.class public Lcom/google/api/client/http/UriTemplate;
.super Ljava/lang/Object;
.source "UriTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    }
.end annotation


# static fields
.field private static final COMPOSITE_NON_EXPLODE_JOINER:Ljava/lang/String; = ","

.field static final COMPOSITE_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    .line 86
    invoke-static {}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->values()[Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 27
    .param p0, "pathUri"    # Ljava/lang/String;
    .param p1, "parameters"    # Ljava/lang/Object;
    .param p2, "addUnusedParamsAsQueryParams"    # Z

    .prologue
    .line 284
    invoke-static/range {p1 .. p1}, Lcom/google/api/client/http/UriTemplate;->getMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v20

    .line 285
    .local v20, "variableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v12, "pathBuf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 287
    .local v6, "cur":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 288
    .local v9, "length":I
    :cond_e
    if-ge v6, v9, :cond_30

    .line 289
    const/16 v21, 0x7b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 290
    .local v11, "next":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_40

    .line 291
    if-nez v6, :cond_25

    if-nez p2, :cond_25

    .line 370
    .end local v11    # "next":I
    .end local p0    # "pathUri":Ljava/lang/String;
    :goto_24
    return-object p0

    .line 295
    .restart local v11    # "next":I
    .restart local p0    # "pathUri":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .end local v11    # "next":I
    :cond_30
    if-eqz p2, :cond_3b

    .line 368
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/google/api/client/http/GenericUrl;->addQueryParams(Ljava/util/Set;Ljava/lang/StringBuilder;)V

    .line 370
    :cond_3b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    .line 298
    .restart local v11    # "next":I
    :cond_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/16 v21, 0x7d

    add-int/lit8 v22, v11, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 300
    .local v3, "close":I
    add-int/lit8 v6, v3, 0x1

    .line 302
    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 303
    .local v15, "templates":Ljava/lang/String;
    invoke-static {v15}, Lcom/google/api/client/http/UriTemplate;->getCompositeOutput(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    move-result-object v4

    .line 1130
    .local v4, "compositeOutput":Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    invoke-static {}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;->is$2a9d1698()Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;

    move-result-object v21

    .line 1144
    invoke-static/range {v21 .. v21}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v22, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;

    new-instance v23, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$1;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter$1;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;)V

    invoke-direct/range {v22 .. v23}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;-><init>(Lcom/google/api/client/repackaged/com/google/common/base/Splitter$Strategy;)V

    .line 304
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/google/api/client/repackaged/com/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v14

    .line 306
    .local v14, "templateIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .line 307
    .local v7, "isFirstParameter":Z
    :cond_89
    :goto_89
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 308
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 309
    .local v13, "template":Ljava/lang/String;
    const-string/jumbo v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 311
    .local v5, "containsExplodeModifier":Z
    invoke-interface {v14}, Ljava/util/ListIterator;->nextIndex()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_eb

    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getVarNameStartIndex()I

    move-result v19

    .line 313
    .local v19, "varNameStartIndex":I
    :goto_ae
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    .line 314
    .local v18, "varNameEndIndex":I
    if-eqz v5, :cond_b6

    .line 316
    add-int/lit8 v18, v18, -0x1

    .line 319
    :cond_b6
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 321
    .local v17, "varName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 322
    .local v16, "value":Ljava/lang/Object;
    if-eqz v16, :cond_89

    .line 326
    if-nez v7, :cond_ee

    .line 327
    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :goto_d3
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/Iterator;

    move/from16 v21, v0

    if-eqz v21, :cond_f9

    move-object/from16 v8, v16

    .line 334
    check-cast v8, Ljava/util/Iterator;

    .line 335
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move-object/from16 v0, v17

    invoke-static {v0, v8, v5, v4}, Lcom/google/api/client/http/UriTemplate;->getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v16

    .line 363
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v16    # "value":Ljava/lang/Object;
    :cond_e5
    :goto_e5
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_89

    .line 311
    .end local v17    # "varName":Ljava/lang/String;
    .end local v18    # "varNameEndIndex":I
    .end local v19    # "varNameStartIndex":I
    :cond_eb
    const/16 v19, 0x0

    goto :goto_ae

    .line 329
    .restart local v16    # "value":Ljava/lang/Object;
    .restart local v17    # "varName":Ljava/lang/String;
    .restart local v18    # "varNameEndIndex":I
    .restart local v19    # "varNameStartIndex":I
    :cond_ee
    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getOutputPrefix()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const/4 v7, 0x0

    goto :goto_d3

    .line 336
    :cond_f9
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Iterable;

    move/from16 v21, v0

    if-nez v21, :cond_10b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->isArray()Z

    move-result v21

    if-eqz v21, :cond_11a

    .line 338
    :cond_10b
    invoke-static/range {v16 .. v16}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 339
    .restart local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    move-object/from16 v0, v17

    invoke-static {v0, v8, v5, v4}, Lcom/google/api/client/http/UriTemplate;->getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v16

    .line 340
    .local v16, "value":Ljava/lang/String;
    goto :goto_e5

    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local v16, "value":Ljava/lang/Object;
    :cond_11a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->isEnum()Z

    move-result v21

    if-eqz v21, :cond_15a

    move-object/from16 v21, v16

    .line 341
    check-cast v21, Ljava/lang/Enum;

    invoke-static/range {v21 .. v21}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v21

    .line 1153
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 342
    if-eqz v21, :cond_e5

    .line 343
    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v21

    if-eqz v21, :cond_151

    .line 344
    const-string/jumbo v21, "%s=%s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v17, v22, v23

    const/16 v23, 0x1

    aput-object v16, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 346
    .end local v16    # "value":Ljava/lang/Object;
    :cond_151
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    goto :goto_e5

    .line 348
    .local v16, "value":Ljava/lang/Object;
    :cond_15a
    invoke-static/range {v16 .. v16}, Lcom/google/api/client/util/Data;->isValueOfPrimitiveType(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16c

    .line 350
    invoke-static/range {v16 .. v16}, Lcom/google/api/client/http/UriTemplate;->getMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    .line 351
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v17

    invoke-static {v0, v10, v5, v4}, Lcom/google/api/client/http/UriTemplate;->getMapPropertyValue(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;

    move-result-object v16

    .line 352
    .local v16, "value":Ljava/lang/String;
    goto/16 :goto_e5

    .line 354
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v16, "value":Ljava/lang/Object;
    :cond_16c
    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v21

    if-eqz v21, :cond_189

    .line 355
    const-string/jumbo v21, "%s=%s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v17, v22, v23

    const/16 v23, 0x1

    aput-object v16, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 357
    .end local v16    # "value":Ljava/lang/Object;
    :cond_189
    invoke-virtual {v4}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getReservedExpansion()Z

    move-result v21

    if-eqz v21, :cond_199

    .line 358
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPathWithoutReserved(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    goto/16 :goto_e5

    .line 360
    .end local v16    # "value":Ljava/lang/String;
    :cond_199
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    goto/16 :goto_e5
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 8
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "uriTemplate"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/Object;
    .param p3, "addUnusedParamsAsQueryParams"    # Z

    .prologue
    .line 252
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 254
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "url":Lcom/google/api/client/http/GenericUrl;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/GenericUrl;->setRawPath(Ljava/lang/String;)V

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .end local v1    # "url":Lcom/google/api/client/http/GenericUrl;
    .local v0, "pathUri":Ljava/lang/String;
    :goto_27
    invoke-static {v0, p2, p3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 257
    .end local v0    # "pathUri":Ljava/lang/String;
    :cond_2c
    const-string/jumbo v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    const-string/jumbo v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 258
    :cond_3e
    move-object v0, p1

    .restart local v0    # "pathUri":Ljava/lang/String;
    goto :goto_27

    .line 260
    .end local v0    # "pathUri":Ljava/lang/String;
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "pathUri":Ljava/lang/String;
    goto :goto_27
.end method

.method static getCompositeOutput(Ljava/lang/String;)Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v1, Lcom/google/api/client/http/UriTemplate;->COMPOSITE_PREFIXES:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .line 203
    .local v0, "compositeOutput":Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    if-nez v0, :cond_15

    sget-object v0, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->SIMPLE:Lcom/google/api/client/http/UriTemplate$CompositeOutput;

    .end local v0    # "compositeOutput":Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    :cond_15
    return-object v0
.end method

.method private static getListPropertyValue(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .registers 7
    .param p0, "varName"    # Ljava/lang/String;
    .param p2, "containsExplodeModifier"    # Z
    .param p3, "compositeOutput"    # Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<*>;Z",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 389
    const-string/jumbo v2, ""

    .line 412
    :goto_9
    return-object v2

    .line 391
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v1, "retBuf":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_49

    .line 394
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "joiner":Ljava/lang/String;
    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 403
    if-eqz p2, :cond_30

    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 404
    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 409
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 396
    .end local v0    # "joiner":Ljava/lang/String;
    :cond_49
    const-string/jumbo v0, ","

    .line 397
    .restart local v0    # "joiner":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 398
    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 412
    :cond_60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method private static getMap(Ljava/lang/Object;)Ljava/util/Map;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 217
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 219
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_11

    invoke-static {v3}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 223
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :cond_31
    return-object v2
.end method

.method private static getMapPropertyValue(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/UriTemplate$CompositeOutput;)Ljava/lang/String;
    .registers 12
    .param p0, "varName"    # Ljava/lang/String;
    .param p2, "containsExplodeModifier"    # Z
    .param p3, "compositeOutput"    # Lcom/google/api/client/http/UriTemplate$CompositeOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/google/api/client/http/UriTemplate$CompositeOutput;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 431
    const-string/jumbo v7, ""

    .line 459
    :goto_9
    return-object v7

    .line 433
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v6, "retBuf":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_55

    .line 437
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, "joiner":Ljava/lang/String;
    const-string/jumbo v4, "="

    .line 447
    .local v4, "mapElementsJoiner":Ljava/lang/String;
    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 448
    .local v5, "mapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_20
    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 449
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 450
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p3, v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "encodedKey":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "encodedValue":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 456
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 440
    .end local v0    # "encodedKey":Ljava/lang/String;
    .end local v1    # "encodedValue":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "joiner":Ljava/lang/String;
    .end local v4    # "mapElementsJoiner":Ljava/lang/String;
    .end local v5    # "mapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_55
    const-string/jumbo v3, ","

    .line 441
    .restart local v3    # "joiner":Ljava/lang/String;
    const-string/jumbo v4, ","

    .line 442
    .restart local v4    # "mapElementsJoiner":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/api/client/http/UriTemplate$CompositeOutput;->requiresVarAssignment()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 443
    invoke-static {p0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 459
    .restart local v5    # "mapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9
.end method
