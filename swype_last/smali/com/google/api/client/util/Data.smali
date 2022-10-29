.class public final Lcom/google/api/client/util/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field public static final NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

.field public static final NULL_BIG_INTEGER:Ljava/math/BigInteger;

.field public static final NULL_BOOLEAN:Ljava/lang/Boolean;

.field public static final NULL_BYTE:Ljava/lang/Byte;

.field private static final NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL_CHARACTER:Ljava/lang/Character;

.field public static final NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

.field public static final NULL_DOUBLE:Ljava/lang/Double;

.field public static final NULL_FLOAT:Ljava/lang/Float;

.field public static final NULL_INTEGER:Ljava/lang/Integer;

.field public static final NULL_LONG:Ljava/lang/Long;

.field public static final NULL_SHORT:Ljava/lang/Short;

.field public static final NULL_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 48
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_CHARACTER:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BYTE:Ljava/lang/Byte;

    .line 60
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_SHORT:Ljava/lang/Short;

    .line 63
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_INTEGER:Ljava/lang/Integer;

    .line 66
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_FLOAT:Ljava/lang/Float;

    .line 69
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    .line 72
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_DOUBLE:Ljava/lang/Double;

    .line 75
    new-instance v0, Ljava/math/BigInteger;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BIG_INTEGER:Ljava/math/BigInteger;

    .line 78
    new-instance v0, Ljava/math/BigDecimal;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

    .line 81
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0}, Lcom/google/api/client/util/DateTime;-><init>()V

    sput-object v0, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 88
    sput-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_CHARACTER:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BYTE:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_SHORT:Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_INTEGER:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_FLOAT:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DOUBLE:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BIG_INTEGER:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_BIG_DECIMAL:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/google/api/client/util/DateTime;

    sget-object v2, Lcom/google/api/client/util/Data;->NULL_DATE_TIME:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "data":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    move-object v1, p0

    .line 232
    .end local p0    # "data":Ljava/lang/Object;, "TT;"
    .local v2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_d
    return-object v1

    .line 211
    .end local v2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "data":Ljava/lang/Object;, "TT;"
    :cond_e
    instance-of v3, p0, Lcom/google/api/client/util/GenericData;

    if-eqz v3, :cond_19

    .line 212
    check-cast p0, Lcom/google/api/client/util/GenericData;

    .end local p0    # "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v1

    goto :goto_d

    .line 215
    .restart local p0    # "data":Ljava/lang/Object;, "TT;"
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 216
    .restart local v2    # "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 217
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 231
    :goto_2f
    invoke-static {p0, v1}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 218
    :cond_33
    instance-of v3, p0, Lcom/google/api/client/util/ArrayMap;

    if-eqz v3, :cond_3f

    move-object v3, p0

    .line 219
    check-cast v3, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {v3}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .local v1, "copy":Lcom/google/api/client/util/ArrayMap;, "TT;"
    goto :goto_2f

    .line 220
    .end local v1    # "copy":Lcom/google/api/client/util/ArrayMap;, "TT;"
    :cond_3f
    const-string/jumbo v3, "java.util.Arrays$ArrayList"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 224
    check-cast p0, Ljava/util/List;

    .end local p0    # "data":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "arrayCopy":[Ljava/lang/Object;
    invoke-static {v0, v0}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_d

    .line 229
    .end local v0    # "arrayCopy":[Ljava/lang/Object;
    .restart local p0    # "data":Ljava/lang/Object;, "TT;"
    :cond_5a
    invoke-static {v2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "copy":Ljava/lang/Object;, "TT;"
    goto :goto_2f
.end method

.method public static deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 24
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "dest"    # Ljava/lang/Object;

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 266
    .local v14, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_4c

    const/16 v20, 0x1

    .line 2037
    :goto_e
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 267
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v20

    if-eqz v20, :cond_52

    .line 269
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v20

    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4f

    const/16 v20, 0x1

    .line 3037
    :goto_27
    invoke-static/range {v20 .. v20}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 270
    const/4 v10, 0x0

    .line 271
    .local v10, "index":I
    invoke-static/range {p0 .. p0}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_147

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 272
    .local v19, "value":Ljava/lang/Object;
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "index":I
    .local v11, "index":I
    invoke-static/range {v19 .. v19}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v10, v11

    .line 273
    .end local v11    # "index":I
    .restart local v10    # "index":I
    goto :goto_33

    .line 266
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "index":I
    .end local v19    # "value":Ljava/lang/Object;
    :cond_4c
    const/16 v20, 0x0

    goto :goto_e

    .line 269
    :cond_4f
    const/16 v20, 0x0

    goto :goto_27

    .line 274
    :cond_52
    const-class v20, Ljava/util/Collection;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_91

    move-object/from16 v15, p0

    .line 277
    check-cast v15, Ljava/util/Collection;

    .line 278
    .local v15, "srcCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const-class v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_75

    move-object/from16 v20, p1

    .line 280
    check-cast v20, Ljava/util/ArrayList;

    .line 281
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->ensureCapacity(I)V

    :cond_75
    move-object/from16 v3, p1

    .line 284
    check-cast v3, Ljava/util/Collection;

    .line 285
    .local v3, "destCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_147

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .line 286
    .local v18, "srcValue":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 290
    .end local v3    # "destCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v15    # "srcCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v18    # "srcValue":Ljava/lang/Object;
    :cond_91
    const-class v20, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    .line 291
    .local v12, "isGenericData":Z
    if-nez v12, :cond_a5

    const-class v20, Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_ee

    .line 292
    :cond_a5
    if-eqz v12, :cond_e9

    move-object/from16 v20, p0

    check-cast v20, Lcom/google/api/client/util/GenericData;

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 294
    .local v2, "classInfo":Lcom/google/api/client/util/ClassInfo;
    :goto_af
    iget-object v0, v2, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_b7
    :goto_b7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_147

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 295
    .local v7, "fieldName":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v6

    .line 297
    .local v6, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    invoke-virtual {v6}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v20

    if-nez v20, :cond_b7

    .line 299
    if-eqz v12, :cond_d5

    .line 3190
    iget-boolean v0, v6, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    move/from16 v20, v0

    .line 299
    if-nez v20, :cond_b7

    .line 300
    :cond_d5
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 301
    .restart local v18    # "srcValue":Ljava/lang/Object;
    if-eqz v18, :cond_b7

    .line 302
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b7

    .line 292
    .end local v2    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    .end local v6    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v7    # "fieldName":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v18    # "srcValue":Ljava/lang/Object;
    :cond_e9
    invoke-static {v14}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    goto :goto_af

    .line 307
    :cond_ee
    const-class v20, Lcom/google/api/client/util/ArrayMap;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_119

    move-object/from16 v4, p1

    .line 310
    check-cast v4, Lcom/google/api/client/util/ArrayMap;

    .local v4, "destMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v17, p0

    .line 312
    check-cast v17, Lcom/google/api/client/util/ArrayMap;

    .line 313
    .local v17, "srcMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/util/ArrayMap;->size()I

    move-result v13

    .line 314
    .local v13, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_105
    if-ge v8, v13, :cond_147

    .line 315
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/google/api/client/util/ArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v18

    .line 316
    .restart local v18    # "srcValue":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v8, v0}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 314
    add-int/lit8 v8, v8, 0x1

    goto :goto_105

    .end local v4    # "destMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "i":I
    .end local v13    # "size":I
    .end local v17    # "srcMap":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v18    # "srcValue":Ljava/lang/Object;
    :cond_119
    move-object/from16 v5, p1

    .line 321
    check-cast v5, Ljava/util/Map;

    .line 323
    .local v5, "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast p0, Ljava/util/Map;

    .line 324
    .end local p0    # "src":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_127
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_147

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 325
    .local v16, "srcEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_127

    .line 329
    .end local v5    # "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "isGenericData":Z
    .end local v16    # "srcEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_147
    return-void
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 155
    if-eqz p0, :cond_10

    sget-object v0, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isPrimitive(Ljava/lang/reflect/Type;)Z
    .registers 4
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    .line 347
    instance-of v2, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_b

    .line 348
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 350
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_b
    instance-of v2, p0, Ljava/lang/Class;

    if-nez v2, :cond_10

    .line 354
    :cond_f
    :goto_f
    return v1

    :cond_10
    move-object v0, p0

    .line 353
    check-cast v0, Ljava/lang/Class;

    .line 354
    .local v0, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_49

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/math/BigInteger;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_49

    const-class v2, Lcom/google/api/client/util/DateTime;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_f

    :cond_49
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public static isValueOfPrimitiveType(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "fieldValue"    # Ljava/lang/Object;

    .prologue
    .line 366
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static mapOf(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p0, "data"    # Ljava/lang/Object;
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
    .line 178
    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 179
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 187
    .end local p0    # "data":Ljava/lang/Object;
    :goto_c
    return-object p0

    .line 181
    .restart local p0    # "data":Ljava/lang/Object;
    :cond_d
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 183
    check-cast p0, Ljava/util/Map;

    goto :goto_c

    .line 186
    :cond_14
    new-instance v0, Lcom/google/api/client/util/DataMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/util/DataMap;-><init>(Ljava/lang/Object;Z)V

    move-object p0, v0

    .line 187
    goto :goto_c
.end method

.method public static newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .registers 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_a

    .line 475
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 477
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_a
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_14

    .line 478
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 480
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_14
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_38

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    move-object v0, v1

    .line 481
    .local v0, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1c
    if-eqz p0, :cond_32

    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_32

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_32

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 483
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    :goto_37
    return-object v1

    .line 480
    .end local v0    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_38
    const/4 v0, 0x0

    goto :goto_1c

    .line 485
    .restart local v0    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3a
    if-nez v0, :cond_52

    .line 486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unable to create new instance of type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_52
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 489
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_37

    .line 491
    :cond_60
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 492
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_37

    .line 495
    :cond_6e
    invoke-static {v0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_37
.end method

.method public static newMapInstance(Ljava/lang/Class;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_a

    const-class v0, Lcom/google/api/client/util/ArrayMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 516
    :cond_a
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    .line 523
    :goto_e
    return-object v0

    .line 518
    :cond_f
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 519
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_e

    .line 522
    :cond_1d
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_e
.end method

.method public static nullOf(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    .local v3, "result":Ljava/lang/Object;
    if-nez v3, :cond_33

    .line 113
    sget-object v5, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v5

    .line 114
    :try_start_b
    sget-object v4, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 115
    if-nez v3, :cond_32

    .line 116
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "dims":I
    move-object v0, p0

    .line 121
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 124
    new-array v4, v1, [I

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "dims":I
    .end local v3    # "result":Ljava/lang/Object;
    :goto_2d
    sget-object v4, Lcom/google/api/client/util/Data;->NULL_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_32
    monitor-exit v5

    .line 143
    :cond_33
    return-object v3

    .line 125
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_34
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 127
    invoke-static {p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    .line 128
    .local v2, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    const-string/jumbo v4, "enum missing constant with @NullValue annotation: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    .line 1251
    if-nez v2, :cond_5b

    .line 1253
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-static {v4, v6}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 139
    .end local v2    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v3    # "result":Ljava/lang/Object;
    :catchall_58
    move-exception v4

    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_b .. :try_end_5a} :catchall_58

    throw v4

    .line 131
    .restart local v2    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .restart local v3    # "result":Ljava/lang/Object;
    :cond_5b
    :try_start_5b
    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    move-result-object v3

    .line 133
    .local v3, "result":Ljava/lang/Enum;
    goto :goto_2d

    .line 135
    .end local v2    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .local v3, "result":Ljava/lang/Object;
    :cond_60
    invoke-static {p0}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_58

    move-result-object v3

    goto :goto_2d
.end method

.method public static parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 401
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_13

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    move-object v0, v1

    .line 402
    .local v0, "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz p0, :cond_d

    if-eqz v0, :cond_e3

    .line 403
    :cond_d
    const-class v1, Ljava/lang/Void;

    if-ne v0, v1, :cond_15

    move-object p1, v2

    .line 450
    .end local p1    # "stringValue":Ljava/lang/String;
    :cond_12
    :goto_12
    return-object p1

    .end local v0    # "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "stringValue":Ljava/lang/String;
    :cond_13
    move-object v0, v2

    .line 401
    goto :goto_9

    .line 406
    .restart local v0    # "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    if-eqz p1, :cond_12

    if-eqz v0, :cond_12

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 410
    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_29

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_50

    .line 411
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_46

    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "expected type Character/char but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 415
    :cond_46
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_12

    .line 417
    :cond_50
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_58

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5d

    .line 418
    :cond_58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_12

    .line 420
    :cond_5d
    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_65

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6a

    .line 421
    :cond_65
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_12

    .line 423
    :cond_6a
    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_72

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_77

    .line 424
    :cond_72
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    goto :goto_12

    .line 426
    :cond_77
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_7f

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_84

    .line 427
    :cond_7f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_12

    .line 429
    :cond_84
    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_8c

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_91

    .line 430
    :cond_8c
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_12

    .line 432
    :cond_91
    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_99

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_9f

    .line 433
    :cond_99
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_12

    .line 435
    :cond_9f
    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_a7

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_ad

    .line 436
    :cond_a7
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_12

    .line 438
    :cond_ad
    const-class v1, Lcom/google/api/client/util/DateTime;

    if-ne v0, v1, :cond_b7

    .line 439
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object p1

    goto/16 :goto_12

    .line 441
    :cond_b7
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_c3

    .line 442
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    goto/16 :goto_12

    .line 444
    :cond_c3
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_cf

    .line 445
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    goto/16 :goto_12

    .line 447
    :cond_cf
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 449
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->enumValue()Ljava/lang/Enum;

    move-result-object p1

    goto/16 :goto_12

    .line 453
    :cond_e3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "expected primitive class, but got: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_a

    .line 540
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p1}, Lcom/google/api/client/util/Types;->getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 543
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_a
    :goto_a
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_26

    move-object v1, p1

    .line 545
    check-cast v1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v1}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 546
    .local v0, "resolved":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_18

    .line 547
    move-object p1, v0

    .line 550
    :cond_18
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_a

    .line 551
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p1, v1, v2

    .restart local p1    # "type":Ljava/lang/reflect/Type;
    goto :goto_a

    .line 555
    .end local v0    # "resolved":Ljava/lang/reflect/Type;
    :cond_26
    return-object p1
.end method
