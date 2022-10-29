.class public final Lcom/google/api/client/util/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_IGNORE_CASE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final ignoreCase:Z

.field public final nameToFieldInfoMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE_IGNORE_CASE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Z)V
    .registers 22
    .param p2, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v14, Ljava/util/IdentityHashMap;

    invoke-direct {v14}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 160
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    .line 161
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    .line 162
    if-eqz p2, :cond_20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v14

    if-nez v14, :cond_9d

    :cond_20
    const/4 v14, 0x1

    :goto_21
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "cannot ignore case on an enum: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 165
    new-instance v11, Ljava/util/TreeSet;

    new-instance v14, Lcom/google/api/client/util/ClassInfo$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/api/client/util/ClassInfo$1;-><init>(Lcom/google/api/client/util/ClassInfo;)V

    invoke-direct {v11, v14}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 171
    .local v11, "nameSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_48
    if-ge v8, v9, :cond_a8

    aget-object v5, v2, v8

    .line 172
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-static {v5}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v6

    .line 173
    .local v6, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v6, :cond_9a

    .line 1153
    iget-object v7, v6, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 177
    .local v7, "fieldName":Ljava/lang/String;
    if-eqz p2, :cond_5e

    .line 178
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_5e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v14, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/util/FieldInfo;

    .line 181
    .local v3, "conflictingFieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-nez v3, :cond_9f

    const/4 v14, 0x1

    :goto_6b
    const-string/jumbo v16, "two fields have the same %sname <%s>: %s and %s"

    const/4 v15, 0x4

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-eqz p2, :cond_a1

    const-string/jumbo v15, "case-insensitive "

    :goto_7a
    aput-object v15, v17, v18

    const/4 v15, 0x1

    aput-object v7, v17, v15

    const/4 v15, 0x2

    aput-object v5, v17, v15

    const/16 v18, 0x3

    if-nez v3, :cond_a5

    const/4 v15, 0x0

    :goto_87
    aput-object v15, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v14, v7, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v11, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v3    # "conflictingFieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v7    # "fieldName":Ljava/lang/String;
    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 162
    .end local v2    # "arr$":[Ljava/lang/reflect/Field;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "nameSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_9d
    const/4 v14, 0x0

    goto :goto_21

    .line 181
    .restart local v2    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v3    # "conflictingFieldInfo":Lcom/google/api/client/util/FieldInfo;
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    .restart local v6    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .restart local v7    # "fieldName":Ljava/lang/String;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "nameSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    :cond_9f
    const/4 v14, 0x0

    goto :goto_6b

    :cond_a1
    const-string/jumbo v15, ""

    goto :goto_7a

    .line 2138
    :cond_a5
    iget-object v15, v3, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    goto :goto_87

    .line 191
    .end local v3    # "conflictingFieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v7    # "fieldName":Ljava/lang/String;
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    .line 192
    .local v12, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v12, :cond_eb

    .line 193
    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;

    move-result-object v13

    .line 194
    .local v13, "superClassInfo":Lcom/google/api/client/util/ClassInfo;
    iget-object v14, v13, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-virtual {v11, v14}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v14, v13, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v14}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_c3
    :goto_c3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_eb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 196
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 197
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v14, v10}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c3

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v10, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c3

    .line 202
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "superClassInfo":Lcom/google/api/client/util/ClassInfo;
    :cond_eb
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_fa

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    :goto_f5
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    .line 204
    return-void

    .line 202
    :cond_fa
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    goto :goto_f5
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "underlyingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;
    .registers 5
    .param p1, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "underlyingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 83
    const/4 v1, 0x0

    .line 94
    :goto_3
    return-object v1

    .line 85
    :cond_4
    if-eqz p1, :cond_1e

    sget-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE_IGNORE_CASE:Ljava/util/Map;

    .line 87
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/api/client/util/ClassInfo;>;"
    :goto_8
    monitor-enter v0

    .line 88
    :try_start_9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/ClassInfo;

    .line 89
    .local v1, "classInfo":Lcom/google/api/client/util/ClassInfo;
    if-nez v1, :cond_19

    .line 90
    new-instance v1, Lcom/google/api/client/util/ClassInfo;

    .end local v1    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    invoke-direct {v1, p0, p1}, Lcom/google/api/client/util/ClassInfo;-><init>(Ljava/lang/Class;Z)V

    .line 91
    .restart local v1    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_19
    monitor-exit v0

    goto :goto_3

    .end local v1    # "classInfo":Lcom/google/api/client/util/ClassInfo;
    :catchall_1b
    move-exception v2

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v2

    .line 85
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/api/client/util/ClassInfo;>;"
    :cond_1e
    sget-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/Map;

    goto :goto_8
.end method


# virtual methods
.method public final getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p1, :cond_e

    .line 123
    iget-boolean v0, p0, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    if-eqz v0, :cond_a

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_e
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/FieldInfo;

    return-object v0
.end method
