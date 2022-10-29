.class public abstract Lcom/google/api/client/json/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/JsonParser$1;
    }
.end annotation


# static fields
.field private static cachedTypemapFields:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method private static getCachedTypemapFieldFor(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 907
    const/4 v10, 0x0

    .line 945
    :goto_3
    return-object v10

    .line 909
    :cond_4
    sget-object v10, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 913
    :try_start_9
    sget-object v10, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    invoke-virtual {v10, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 914
    sget-object v10, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    invoke-virtual {v10, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Field;
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_bb

    .line 945
    sget-object v11, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    .line 917
    :cond_1f
    const/4 v9, 0x0

    .line 918
    .local v9, "value":Ljava/lang/reflect/Field;
    :try_start_20
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v10

    .line 2217
    iget-object v10, v10, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v10}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    .line 919
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/api/client/util/FieldInfo;

    .line 3138
    iget-object v1, v10, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 921
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v10, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 923
    .local v8, "typemapAnnotation":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    if-eqz v8, :cond_32

    .line 924
    if-nez v9, :cond_aa

    const/4 v10, 0x1

    :goto_4d
    const-string/jumbo v11, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 927
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    const-string/jumbo v11, "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 930
    move-object v9, v1

    .line 932
    invoke-interface {v8}, Lcom/google/api/client/json/JsonPolymorphicTypeMap;->typeDefinitions()[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;

    move-result-object v7

    .line 4036
    .local v7, "typeDefs":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 934
    .local v6, "typeDefKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v10, v7

    if-lez v10, :cond_ac

    const/4 v10, 0x1

    :goto_82
    const-string/jumbo v11, "@JsonPolymorphicTypeMap must have at least one @TypeDef"

    invoke-static {v10, v11}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 936
    move-object v0, v7

    .local v0, "arr$":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    array-length v4, v7

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8b
    if-ge v3, v4, :cond_32

    aget-object v5, v0, v3

    .line 937
    .local v5, "typeDef":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    invoke-interface {v5}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "Class contains two @TypeDef annotations with identical key: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v5}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 936
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 924
    .end local v0    # "arr$":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "typeDef":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .end local v6    # "typeDefKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "typeDefs":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    :cond_aa
    const/4 v10, 0x0

    goto :goto_4d

    .line 934
    .restart local v6    # "typeDefKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v7    # "typeDefs":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    :cond_ac
    const/4 v10, 0x0

    goto :goto_82

    .line 942
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "typeDefKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "typeDefs":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .end local v8    # "typemapAnnotation":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    :cond_ae
    sget-object v10, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    invoke-virtual {v10, p0, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3
    .catchall {:try_start_20 .. :try_end_b3} :catchall_bb

    .line 945
    sget-object v10, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v10, v9

    goto/16 :goto_3

    .end local v9    # "value":Ljava/lang/reflect/Field;
    :catchall_bb
    move-exception v10

    sget-object v11, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v10
.end method

.method private parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 27
    .param p2, "destination"    # Ljava/lang/Object;
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/google/api/client/json/GenericJson;

    if-eqz v3, :cond_11

    move-object/from16 v3, p2

    .line 440
    check-cast v3, Lcom/google/api/client/json/GenericJson;

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/client/json/GenericJson;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 442
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v17

    .line 443
    .local v17, "curToken":Lcom/google/api/client/json/JsonToken;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    .line 444
    .local v18, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v15

    .line 445
    .local v15, "classInfo":Lcom/google/api/client/util/ClassInfo;
    const-class v3, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v21

    .line 446
    .local v21, "isGenericData":Z
    if-nez v21, :cond_7e

    const-class v3, Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7e

    move-object/from16 v5, p2

    .line 450
    check-cast v5, Ljava/util/Map;

    .line 451
    .local v5, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/google/api/client/json/JsonParser;->parseMap(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 493
    .end local v5    # "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_43
    return-void

    .line 2138
    .local v19, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .local v22, "key":Ljava/lang/String;
    :cond_44
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 470
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 471
    .local v16, "contextSize":I
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 472
    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v12}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v20

    .line 478
    .local v20, "fieldValue":Ljava/lang/Object;
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 479
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 491
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "contextSize":I
    .end local v20    # "fieldValue":Ljava/lang/Object;
    :goto_7a
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v17

    .line 455
    .end local v19    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v22    # "key":Ljava/lang/String;
    :cond_7e
    sget-object v3, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_43

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v22

    .line 457
    .restart local v22    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 459
    if-eqz p3, :cond_99

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 463
    :cond_99
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v19

    .line 464
    .restart local v19    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v19, :cond_b6

    .line 466
    invoke-virtual/range {v19 .. v19}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1190
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    .line 466
    if-nez v3, :cond_44

    .line 467
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "final array/object fields are not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 480
    :cond_b6
    if-eqz v21, :cond_d1

    move-object/from16 v3, p2

    .line 482
    check-cast v3, Lcom/google/api/client/util/GenericData;

    .line 483
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v8 .. v14}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    goto :goto_7a

    .line 486
    :cond_d1
    if-eqz p3, :cond_dc

    .line 487
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->handleUnrecognizedKey(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    :cond_dc
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    goto :goto_7a
.end method

.method private parseArray(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 15
    .param p1, "fieldContext"    # Ljava/lang/reflect/Field;
    .param p3, "destinationItemType"    # Ljava/lang/reflect/Type;
    .param p5, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    .local p2, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p4, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v7

    .line 646
    .local v7, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_4
    sget-object v0, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    if-eq v7, v0, :cond_1b

    .line 648
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v8

    .line 654
    .local v8, "parsedValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v7

    .line 656
    goto :goto_4

    .line 657
    .end local v8    # "parsedValue":Ljava/lang/Object;, "TT;"
    :cond_1b
    return-void
.end method

.method private parseMap(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 16
    .param p1, "fieldContext"    # Ljava/lang/reflect/Field;
    .param p3, "valueType"    # Ljava/lang/reflect/Type;
    .param p5, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    .local p2, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v7

    .line 672
    .local v7, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_4
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v7, v0, :cond_17

    .line 673
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 676
    if-eqz p5, :cond_18

    invoke-virtual {p5, p2, v8}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 684
    .end local v8    # "key":Ljava/lang/String;
    :cond_17
    return-void

    .line 679
    .restart local v8    # "key":Ljava/lang/String;
    :cond_18
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v9

    .line 681
    .local v9, "value":Ljava/lang/Object;
    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v7

    .line 683
    goto :goto_4
.end method

.method private final parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;
    .registers 44
    .param p1, "fieldContext"    # Ljava/lang/reflect/Field;
    .param p2, "valueType"    # Ljava/lang/reflect/Type;
    .param p4, "destination"    # Ljava/lang/Object;
    .param p5, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .param p6, "handlePolymorphic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    .local p3, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 707
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_2d

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v36, v4

    .line 708
    .local v36, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_14
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_22

    move-object/from16 v4, p2

    .line 709
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v36

    .line 712
    :cond_22
    const-class v4, Ljava/lang/Void;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_30

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    .line 714
    const/4 v4, 0x0

    .line 872
    :cond_2c
    :goto_2c
    return-object v4

    .line 707
    .end local v36    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2d
    const/16 v36, 0x0

    goto :goto_14

    .line 717
    .restart local v36    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v30

    .line 719
    .local v30, "token":Lcom/google/api/client/json/JsonToken;
    :try_start_34
    sget-object v4, Lcom/google/api/client/json/JsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_410

    .line 874
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unexpected JSON node type: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_5b} :catch_5b

    .line 876
    :catch_5b
    move-exception v23

    .line 878
    .local v23, "e":Ljava/lang/IllegalArgumentException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 879
    .local v21, "contextStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v22

    .line 880
    .local v22, "currentName":Ljava/lang/String;
    if-eqz v22, :cond_75

    .line 881
    const-string/jumbo v4, "key "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_75
    if-eqz p1, :cond_8f

    .line 884
    if-eqz v22, :cond_81

    .line 885
    const-string/jumbo v4, ", "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_81
    const-string/jumbo v4, "field "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 889
    :cond_8f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 722
    .end local v21    # "contextStringBuilder":Ljava/lang/StringBuilder;
    .end local v22    # "currentName":Ljava/lang/String;
    .end local v23    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_9b
    :try_start_9b
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v25

    .line 723
    .local v25, "isArray":Z
    if-eqz p2, :cond_af

    if-nez v25, :cond_af

    if-eqz v36, :cond_f7

    const-class v4, Ljava/util/Collection;

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f7

    :cond_af
    const/4 v4, 0x1

    :goto_b0
    const-string/jumbo v5, "expected collection or array type but got %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v4, v5, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 726
    const/4 v6, 0x0

    .line 727
    .local v6, "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz p5, :cond_cb

    if-eqz p1, :cond_cb

    .line 728
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForArray(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v6

    .line 730
    :cond_cb
    if-nez v6, :cond_d1

    .line 731
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v6

    .line 733
    :cond_d1
    const/4 v7, 0x0

    .line 734
    .local v7, "subType":Ljava/lang/reflect/Type;
    if-eqz v25, :cond_f9

    .line 735
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 739
    :cond_d8
    :goto_d8
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    .line 740
    invoke-direct/range {v4 .. v9}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 741
    if-eqz v25, :cond_10a

    .line 742
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/api/client/util/Types;->toArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2c

    .line 723
    .end local v6    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v7    # "subType":Ljava/lang/reflect/Type;
    :cond_f7
    const/4 v4, 0x0

    goto :goto_b0

    .line 736
    .restart local v6    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v7    # "subType":Ljava/lang/reflect/Type;
    :cond_f9
    if-eqz v36, :cond_d8

    const-class v4, Ljava/lang/Iterable;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 737
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    goto :goto_d8

    :cond_10a
    move-object v4, v6

    .line 744
    goto/16 :goto_2c

    .line 748
    .end local v6    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v7    # "subType":Ljava/lang/reflect/Type;
    .end local v25    # "isArray":Z
    :pswitch_10d
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_187

    const/4 v4, 0x1

    :goto_114
    const-string/jumbo v5, "expected object or map type but got %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v4, v5, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 751
    if-eqz p6, :cond_189

    invoke-static/range {v36 .. v36}, Lcom/google/api/client/json/JsonParser;->getCachedTypemapFieldFor(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v35

    .line 752
    .local v35, "typemapField":Ljava/lang/reflect/Field;
    :goto_126
    const/16 v28, 0x0

    .line 753
    .local v28, "newInstance":Ljava/lang/Object;
    if-eqz v36, :cond_136

    if-eqz p5, :cond_136

    .line 754
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v28

    .line 756
    .end local v28    # "newInstance":Ljava/lang/Object;
    :cond_136
    if-eqz v36, :cond_18c

    const-class v4, Ljava/util/Map;

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_18c

    const/16 v26, 0x1

    .line 757
    .local v26, "isMap":Z
    :goto_144
    if-eqz v35, :cond_18f

    .line 758
    new-instance v28, Lcom/google/api/client/json/GenericJson;

    invoke-direct/range {v28 .. v28}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .local v28, "newInstance":Lcom/google/api/client/json/GenericJson;
    move-object/from16 v4, v28

    .line 767
    .end local v28    # "newInstance":Lcom/google/api/client/json/GenericJson;
    :goto_14d
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 768
    .local v20, "contextSize":I
    if-eqz p2, :cond_15a

    .line 769
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_15a
    if-eqz v26, :cond_1a5

    const-class v5, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1a5

    .line 772
    const-class v5, Ljava/util/Map;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1a3

    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 774
    .local v11, "subValueType":Ljava/lang/reflect/Type;
    :goto_174
    if-eqz v11, :cond_1a5

    .line 776
    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    move-object v10, v0

    .local v10, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    .line 777
    invoke-direct/range {v8 .. v13}, Lcom/google/api/client/json/JsonParser;->parseMap(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    goto/16 :goto_2c

    .line 748
    .end local v10    # "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "subValueType":Ljava/lang/reflect/Type;
    .end local v20    # "contextSize":I
    .end local v26    # "isMap":Z
    .end local v35    # "typemapField":Ljava/lang/reflect/Field;
    :cond_187
    const/4 v4, 0x0

    goto :goto_114

    .line 751
    :cond_189
    const/16 v35, 0x0

    goto :goto_126

    .line 756
    .restart local v35    # "typemapField":Ljava/lang/reflect/Field;
    :cond_18c
    const/16 v26, 0x0

    goto :goto_144

    .line 759
    .restart local v26    # "isMap":Z
    :cond_18f
    if-nez v28, :cond_40b

    .line 761
    if-nez v26, :cond_195

    if-nez v36, :cond_19c

    .line 762
    :cond_195
    invoke-static/range {v36 .. v36}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v28

    .local v28, "newInstance":Ljava/util/Map;
    move-object/from16 v4, v28

    goto :goto_14d

    .line 764
    .end local v28    # "newInstance":Ljava/util/Map;
    :cond_19c
    invoke-static/range {v36 .. v36}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v28

    .local v28, "newInstance":Ljava/lang/Object;
    move-object/from16 v4, v28

    goto :goto_14d

    .line 772
    .end local v28    # "newInstance":Ljava/lang/Object;
    .restart local v20    # "contextSize":I
    :cond_1a3
    const/4 v11, 0x0

    goto :goto_174

    .line 781
    :cond_1a5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 782
    if-eqz p2, :cond_1b7

    .line 783
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 785
    :cond_1b7
    if-eqz v35, :cond_2c

    .line 790
    move-object v0, v4

    check-cast v0, Lcom/google/api/client/json/GenericJson;

    move-object v5, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 791
    .local v34, "typeValueObject":Ljava/lang/Object;
    if-eqz v34, :cond_237

    const/4 v5, 0x1

    :goto_1c8
    const-string/jumbo v8, "No value specified for @JsonPolymorphicTypeMap field"

    invoke-static {v5, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 793
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    .line 794
    .local v33, "typeValue":Ljava/lang/String;
    const-class v5, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v32

    check-cast v32, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 795
    .local v32, "typeMap":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    const/4 v14, 0x0

    .line 796
    .local v14, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v32 .. v32}, Lcom/google/api/client/json/JsonPolymorphicTypeMap;->typeDefinitions()[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;

    move-result-object v19

    .local v19, "arr$":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v27, v0

    .local v27, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_1e8
    move/from16 v0, v24

    move/from16 v1, v27

    if-ge v0, v1, :cond_200

    aget-object v31, v19, v24

    .line 797
    .local v31, "typeDefinition":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    invoke-interface/range {v31 .. v31}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_239

    .line 798
    invoke-interface/range {v31 .. v31}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->ref()Ljava/lang/Class;

    move-result-object v14

    .line 802
    .end local v31    # "typeDefinition":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    :cond_200
    if-eqz v14, :cond_23c

    const/4 v5, 0x1

    :goto_203
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "No TypeDef annotation found with key: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v5

    .line 806
    invoke-virtual {v5, v4}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;

    move-result-object v12

    .line 807
    .local v12, "parser":Lcom/google/api/client/json/JsonParser;
    invoke-direct {v12}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    .line 808
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    invoke-direct/range {v12 .. v18}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2c

    .line 791
    .end local v12    # "parser":Lcom/google/api/client/json/JsonParser;
    .end local v14    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "arr$":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .end local v24    # "i$":I
    .end local v27    # "len$":I
    .end local v32    # "typeMap":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    .end local v33    # "typeValue":Ljava/lang/String;
    :cond_237
    const/4 v5, 0x0

    goto :goto_1c8

    .line 796
    .restart local v14    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "arr$":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .restart local v24    # "i$":I
    .restart local v27    # "len$":I
    .restart local v31    # "typeDefinition":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .restart local v32    # "typeMap":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    .restart local v33    # "typeValue":Ljava/lang/String;
    :cond_239
    add-int/lit8 v24, v24, 0x1

    goto :goto_1e8

    .line 802
    .end local v31    # "typeDefinition":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    :cond_23c
    const/4 v5, 0x0

    goto :goto_203

    .line 811
    .end local v14    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "arr$":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .end local v20    # "contextSize":I
    .end local v24    # "i$":I
    .end local v26    # "isMap":Z
    .end local v27    # "len$":I
    .end local v32    # "typeMap":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    .end local v33    # "typeValue":Ljava/lang/String;
    .end local v34    # "typeValueObject":Ljava/lang/Object;
    .end local v35    # "typemapField":Ljava/lang/reflect/Field;
    :pswitch_23e
    if-eqz p2, :cond_252

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_252

    if-eqz v36, :cond_269

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_269

    :cond_252
    const/4 v4, 0x1

    :goto_253
    const-string/jumbo v5, "expected type Boolean or boolean but got %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v4, v5, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 814
    sget-object v4, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_26b

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_2c

    .line 811
    :cond_269
    const/4 v4, 0x0

    goto :goto_253

    .line 814
    :cond_26b
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2c

    .line 817
    :pswitch_26f
    if-eqz p1, :cond_27b

    const-class v4, Lcom/google/api/client/json/JsonString;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_294

    :cond_27b
    const/4 v4, 0x1

    :goto_27c
    const-string/jumbo v5, "number type formatted as a JSON number cannot use @JsonString annotation"

    invoke-static {v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 820
    if-eqz v36, :cond_28e

    const-class v4, Ljava/math/BigDecimal;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_296

    .line 821
    :cond_28e
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v4

    goto/16 :goto_2c

    .line 817
    :cond_294
    const/4 v4, 0x0

    goto :goto_27c

    .line 823
    :cond_296
    const-class v4, Ljava/math/BigInteger;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_2a2

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v4

    goto/16 :goto_2c

    .line 826
    :cond_2a2
    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_2ae

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_2b8

    .line 827
    :cond_2ae
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getDoubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto/16 :goto_2c

    .line 829
    :cond_2b8
    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_2c4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_2ce

    .line 830
    :cond_2c4
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getLongValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_2c

    .line 832
    :cond_2ce
    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_2da

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_2e4

    .line 833
    :cond_2da
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFloatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto/16 :goto_2c

    .line 835
    :cond_2e4
    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_2f0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_2fa

    .line 836
    :cond_2f0
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getIntValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_2c

    .line 838
    :cond_2fa
    const-class v4, Ljava/lang/Short;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_306

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_310

    .line 839
    :cond_306
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getShortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    goto/16 :goto_2c

    .line 841
    :cond_310
    const-class v4, Ljava/lang/Byte;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_31c

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_326

    .line 842
    :cond_31c
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getByteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    goto/16 :goto_2c

    .line 844
    :cond_326
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "expected numeric type but got "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 847
    :pswitch_33e
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    .line 851
    .local v29, "text":Ljava/lang/String;
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_364

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_364

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v36

    if-eq v0, v4, :cond_364

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v36

    if-ne v0, v4, :cond_385

    :cond_364
    const-string/jumbo v4, "nan"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a4

    const-string/jumbo v4, "infinity"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a4

    const-string/jumbo v4, "-infinity"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a4

    .line 854
    :cond_385
    if-eqz v36, :cond_39d

    const-class v4, Ljava/lang/Number;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_39d

    if-eqz p1, :cond_3b0

    const-class v4, Lcom/google/api/client/json/JsonString;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_3b0

    :cond_39d
    const/4 v4, 0x1

    :goto_39e
    const-string/jumbo v5, "number field formatted as a JSON string must use the @JsonString annotation"

    invoke-static {v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 859
    :cond_3a4
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2c

    .line 854
    :cond_3b0
    const/4 v4, 0x0

    goto :goto_39e

    .line 861
    .end local v29    # "text":Ljava/lang/String;
    :pswitch_3b2
    if-eqz v36, :cond_3ba

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_3e3

    :cond_3ba
    const/4 v4, 0x1

    :goto_3bb
    const-string/jumbo v5, "primitive number field but found a JSON null"

    invoke-static {v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 863
    if-eqz v36, :cond_3fd

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    and-int/lit16 v4, v4, 0x600

    if-eqz v4, :cond_3fd

    .line 865
    const-class v4, Ljava/util/Collection;

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3e5

    .line 866
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2c

    .line 861
    :cond_3e3
    const/4 v4, 0x0

    goto :goto_3bb

    .line 868
    :cond_3e5
    const-class v4, Ljava/util/Map;

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3fd

    .line 869
    invoke-static/range {v36 .. v36}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2c

    .line 872
    :cond_3fd
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_408
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_408} :catch_5b

    move-result-object v4

    goto/16 :goto_2c

    .restart local v26    # "isMap":Z
    .restart local v35    # "typemapField":Ljava/lang/reflect/Field;
    :cond_40b
    move-object/from16 v4, v28

    goto/16 :goto_14d

    .line 719
    nop

    :pswitch_data_410
    .packed-switch 0x1
        :pswitch_10d
        :pswitch_9b
        :pswitch_9b
        :pswitch_10d
        :pswitch_10d
        :pswitch_23e
        :pswitch_23e
        :pswitch_26f
        :pswitch_26f
        :pswitch_33e
        :pswitch_3b2
    .end packed-switch
.end method

.method private startParsing()Lcom/google/api/client/json/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 220
    .local v0, "currentToken":Lcom/google/api/client/json/JsonToken;
    if-nez v0, :cond_a

    .line 221
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 223
    :cond_a
    if-eqz v0, :cond_14

    const/4 v1, 0x1

    :goto_d
    const-string/jumbo v2, "no JSON input found"

    invoke-static {v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 224
    return-object v0

    .line 223
    :cond_14
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 241
    .local v0, "currentToken":Lcom/google/api/client/json/JsonToken;
    sget-object v1, Lcom/google/api/client/json/JsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    invoke-virtual {v0}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    .line 254
    :goto_f
    return-object v0

    .line 243
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 244
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_1c

    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_21

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    invoke-static {v1, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    goto :goto_1d

    .line 249
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    goto :goto_f

    .line 241
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_10
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getByteValue()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentToken()Lcom/google/api/client/json/JsonToken;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public abstract getFloatValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLongValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getShortValue()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextToken()Lcom/google/api/client/json/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final parse(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
    .line 312
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 4
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    return-object v0
.end method

.method public parse(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .registers 4
    .param p1, "dataType"    # Ljava/lang/reflect/Type;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 11
    .param p1, "dataType"    # Ljava/lang/reflect/Type;
    .param p2, "close"    # Z
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    :try_start_0
    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 380
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    .line 382
    :cond_b
    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 384
    if-eqz p2, :cond_1f

    .line 385
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    :cond_1f
    return-object v0

    .line 384
    :catchall_20
    move-exception v0

    if-eqz p2, :cond_26

    .line 385
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    :cond_26
    throw v0
.end method

.method public final parse(Ljava/lang/Object;)V
    .registers 3
    .param p1, "destination"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 404
    return-void
.end method

.method public final parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 5
    .param p1, "destination"    # Ljava/lang/Object;
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 426
    return-void
.end method

.method public final parseAndClose(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
    .line 148
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 4
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public final parseAndClose(Ljava/lang/Object;)V
    .registers 3
    .param p1, "destination"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 271
    return-void
.end method

.method public final parseAndClose(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 4
    .param p1, "destination"    # Ljava/lang/Object;
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 292
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 293
    return-void

    .line 292
    :catchall_7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public final parseArray(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .registers 5
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 595
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 597
    .local v0, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 598
    return-object v0
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 613
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 10
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 630
    return-void
.end method

.method public final parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .registers 5
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    move-result-object v0

    .line 527
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public final parseArrayAndClose(Ljava/util/Collection;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArrayAndClose(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 544
    return-void
.end method

.method public final parseArrayAndClose(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 5
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 562
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 563
    return-void

    .line 562
    :catchall_7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
.end method

.method public abstract skipChildren()Lcom/google/api/client/json/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final skipToKey(Ljava/util/Set;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "keysToFind":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 204
    .local v0, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_4
    sget-object v2, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v2, :cond_1e

    .line 205
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 207
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 213
    .end local v1    # "key":Ljava/lang/String;
    :goto_15
    return-object v1

    .line 210
    .restart local v1    # "key":Ljava/lang/String;
    :cond_16
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    .line 211
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 212
    goto :goto_4

    .line 213
    .end local v1    # "key":Ljava/lang/String;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public final skipToKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "keyToFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/util/Set;)Ljava/lang/String;

    .line 186
    return-void
.end method
