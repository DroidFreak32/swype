.class public final Lcom/google/api/client/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final field:Ljava/lang/reflect/Field;

.field public final isPrimitive:Z

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 128
    if-nez p2, :cond_17

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    .line 130
    return-void

    .line 128
    :cond_17
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 225
    :catch_5
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Lcom/google/api/client/util/FieldInfo;"
        }
    .end annotation

    .prologue
    .local p0, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 48
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    .line 49
    .local v1, "result":Lcom/google/api/client/util/FieldInfo;
    if-eqz v1, :cond_21

    :goto_14
    const-string/jumbo v3, "enum constant missing @Value or @NullValue annotation: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_20} :catch_23

    .line 51
    return-object v1

    :cond_21
    move v2, v3

    .line 49
    goto :goto_14

    .line 52
    .end local v1    # "result":Lcom/google/api/client/util/FieldInfo;
    :catch_23
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;
    .registers 9
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v6, 0x0

    .line 66
    if-nez p0, :cond_5

    move-object v0, v6

    .line 105
    :goto_4
    return-object v0

    .line 69
    :cond_5
    sget-object v7, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    monitor-enter v7

    .line 70
    :try_start_8
    sget-object v5, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/FieldInfo;

    .line 71
    .local v0, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v2

    .line 72
    .local v2, "isEnumContant":Z
    if-nez v0, :cond_49

    if-nez v2, :cond_22

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_49

    .line 74
    :cond_22
    if-eqz v2, :cond_5d

    .line 76
    const-class v5, Lcom/google/api/client/util/Value;

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/Value;

    .line 77
    .local v4, "value":Lcom/google/api/client/util/Value;
    if-eqz v4, :cond_4e

    .line 78
    invoke-interface {v4}, Lcom/google/api/client/util/Value;->value()Ljava/lang/String;

    move-result-object v1

    .line 99
    .end local v4    # "value":Lcom/google/api/client/util/Value;
    .local v1, "fieldName":Ljava/lang/String;
    :goto_32
    const-string/jumbo v5, "##default"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 100
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_3f
    new-instance v0, Lcom/google/api/client/util/FieldInfo;

    .end local v0    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    invoke-direct {v0, p0, v1}, Lcom/google/api/client/util/FieldInfo;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 103
    .restart local v0    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    sget-object v5, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v1    # "fieldName":Ljava/lang/String;
    :cond_49
    monitor-exit v7

    goto :goto_4

    .line 106
    .end local v0    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v2    # "isEnumContant":Z
    :catchall_4b
    move-exception v5

    monitor-exit v7
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4b

    throw v5

    .line 81
    .restart local v0    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .restart local v2    # "isEnumContant":Z
    .restart local v4    # "value":Lcom/google/api/client/util/Value;
    :cond_4e
    :try_start_4e
    const-class v5, Lcom/google/api/client/util/NullValue;

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/util/NullValue;

    .line 82
    if-eqz v5, :cond_5a

    .line 83
    const/4 v1, 0x0

    .restart local v1    # "fieldName":Ljava/lang/String;
    goto :goto_32

    .line 86
    .end local v1    # "fieldName":Ljava/lang/String;
    :cond_5a
    monitor-exit v7

    move-object v0, v6

    goto :goto_4

    .line 91
    .end local v4    # "value":Lcom/google/api/client/util/Value;
    :cond_5d
    const-class v5, Lcom/google/api/client/util/Key;

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/util/Key;

    .line 92
    .local v3, "key":Lcom/google/api/client/util/Key;
    if-nez v3, :cond_6a

    .line 94
    monitor-exit v7

    move-object v0, v6

    goto :goto_4

    .line 96
    :cond_6a
    invoke-interface {v3}, Lcom/google/api/client/util/Key;->value()Ljava/lang/String;

    move-result-object v1

    .line 97
    .restart local v1    # "fieldName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_4b

    goto :goto_32
.end method

.method public static setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 237
    invoke-static {p0, p1}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, "finalValue":Ljava/lang/Object;
    if-nez p2, :cond_55

    if-eqz v1, :cond_5b

    .line 239
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "expected final value <"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> but was <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " field in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_55
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 250
    .end local v1    # "finalValue":Ljava/lang/Object;
    :cond_5b
    :goto_5b
    return-void

    .line 245
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_5f} :catch_67

    goto :goto_5b

    .line 246
    :catch_60
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 248
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_67
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final enumValue()Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>()TT;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isFinal()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1, p2}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    return-void
.end method
