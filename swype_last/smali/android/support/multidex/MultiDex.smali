.class public final Landroid/support/multidex/MultiDex;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/MultiDex$V4;
    }
.end annotation


# static fields
.field private static final IS_VM_MULTIDEX_CAPABLE:Z

.field private static final SECONDARY_FOLDER_NAME:Ljava/lang/String;

.field private static final installedApk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "code_cache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "secondary-dexes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/multidex/MultiDex;->SECONDARY_FOLDER_NAME:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/support/multidex/MultiDex;->installedApk:Ljava/util/Set;

    .line 76
    const-string/jumbo v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/multidex/MultiDex;->isVMMultidexCapable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/support/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1}, Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 57
    .line 7331
    invoke-static {p0, p1}, Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 7332
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 7333
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v3, v0

    array-length v4, p2

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 7335
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7336
    array-length v0, v0

    array-length v3, p2

    invoke-static {p2, v5, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7337
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method private static checkValidZipFiles(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 257
    invoke-static {v1}, Landroid/support/multidex/MultiDexExtractor;->verifyZipFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 258
    const/4 v1, 0x0

    .line 261
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17
.end method

.method private static clearOldDexDir(Landroid/content/Context;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "secondary-dexes"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    .local v1, "dexDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 343
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Clearing old secondary dex dir ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 345
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_5b

    .line 346
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to list secondary dex dir content ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v2    # "files":[Ljava/io/File;
    :cond_5a
    :goto_5a
    return-void

    .line 349
    .restart local v2    # "files":[Ljava/io/File;
    :cond_5b
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5e
    if-ge v3, v4, :cond_c9

    aget-object v5, v0, v3

    .line 350
    .local v5, "oldFile":Ljava/io/File;
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Trying to delete old file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " of size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_ae

    .line 353
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to delete old file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 355
    :cond_ae
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Deleted old file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .line 358
    .end local v5    # "oldFile":Ljava/io/File;
    :cond_c9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_eb

    .line 359
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to delete secondary dex dir "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 361
    :cond_eb
    const-string/jumbo v6, "MultiDex"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Deleted old secondary dex dir "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_1b

    .line 275
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 278
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_14

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_14} :catch_15

    .line 282
    :cond_14
    return-object v1

    .line 273
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_15
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 288
    :cond_1b
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 302
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_1b

    .line 304
    :try_start_6
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 307
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_14

    .line 308
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_14} :catch_15

    .line 311
    :cond_14
    return-object v1

    .line 302
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_15
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 317
    :cond_1b
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 188
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 189
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 199
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_d

    if-nez v1, :cond_19

    .line 205
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    :goto_d
    return-object v3

    .line 190
    :catch_e
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "MultiDex"

    const-string/jumbo v5, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 203
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_19
    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    goto :goto_d
.end method

.method public static install(Landroid/content/Context;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v8, "install"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-boolean v7, Landroid/support/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    if-eqz v7, :cond_17

    .line 94
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v8, "VM has multidex support, MultiDex support library is disabled."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_16
    :goto_16
    return-void

    .line 98
    :cond_17
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_3b

    .line 99
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Multi dex installation failed. SDK "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is unsupported. Min SDK version is 4."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 104
    :cond_3b
    :try_start_3b
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 105
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_16

    .line 110
    sget-object v8, Landroid/support/multidex/MultiDex;->installedApk:Ljava/util/Set;

    monitor-enter v8
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_44} :catch_53

    .line 111
    :try_start_44
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 112
    .local v0, "apkPath":Ljava/lang/String;
    sget-object v7, Landroid/support/multidex/MultiDex;->installedApk:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 113
    monitor-exit v8

    goto :goto_16

    .line 174
    .end local v0    # "apkPath":Ljava/lang/String;
    :catchall_50
    move-exception v7

    monitor-exit v8
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_50

    :try_start_52
    throw v7
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 176
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_53
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v8, "Multidex installation failure"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Multi dex installation failed ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_7e
    :try_start_7e
    sget-object v7, Landroid/support/multidex/MultiDex;->installedApk:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x14

    if-le v7, v9, :cond_ba

    .line 118
    const-string/jumbo v7, "MultiDex"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "MultiDex is not guaranteed to work in SDK version "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it\'s not the case here: java.vm.version=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "java.vm.version"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_7e .. :try_end_ba} :catchall_50

    .line 133
    :cond_ba
    :try_start_ba
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_bd
    .catch Ljava/lang/RuntimeException; {:try_start_ba .. :try_end_bd} :catch_cc
    .catchall {:try_start_ba .. :try_end_bd} :catchall_50

    move-result-object v5

    .line 143
    .local v5, "loader":Ljava/lang/ClassLoader;
    if-nez v5, :cond_d9

    .line 145
    :try_start_c0
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v9, "Context class loader is null. Must be running in test mode. Skip patching."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    monitor-exit v8

    goto/16 :goto_16

    .line 134
    .end local v5    # "loader":Ljava/lang/ClassLoader;
    :catch_cc
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v9, "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."

    invoke-static {v7, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    monitor-exit v8
    :try_end_d7
    .catchall {:try_start_c0 .. :try_end_d7} :catchall_50

    goto/16 :goto_16

    .line 152
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "loader":Ljava/lang/ClassLoader;
    :cond_d9
    :try_start_d9
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->clearOldDexDir(Landroid/content/Context;)V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_dc} :catch_ff
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_50

    .line 158
    :goto_dc
    :try_start_dc
    new-instance v2, Ljava/io/File;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sget-object v9, Landroid/support/multidex/MultiDex;->SECONDARY_FOLDER_NAME:Ljava/lang/String;

    invoke-direct {v2, v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v2, "dexDir":Ljava/io/File;
    const/4 v7, 0x0

    invoke-static {p0, v1, v2, v7}, Landroid/support/multidex/MultiDexExtractor;->load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v4

    .line 160
    .local v4, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v4}, Landroid/support/multidex/MultiDex;->checkValidZipFiles(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 161
    invoke-static {v5, v2, v4}, Landroid/support/multidex/MultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    .line 174
    :goto_f3
    monitor-exit v8
    :try_end_f4
    .catchall {:try_start_dc .. :try_end_f4} :catchall_50

    .line 180
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v8, "install done"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 153
    .end local v2    # "dexDir":Ljava/io/File;
    .end local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_ff
    move-exception v6

    .line 154
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_100
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v9, "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."

    invoke-static {v7, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_dc

    .line 163
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v2    # "dexDir":Ljava/io/File;
    .restart local v4    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_10a
    const-string/jumbo v7, "MultiDex"

    const-string/jumbo v9, "Files were not valid zip files.  Forcing a reload."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v7, 0x1

    invoke-static {p0, v1, v2, v7}, Landroid/support/multidex/MultiDexExtractor;->load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v4

    .line 167
    invoke-static {v4}, Landroid/support/multidex/MultiDex;->checkValidZipFiles(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_122

    .line 168
    invoke-static {v5, v2, v4}, Landroid/support/multidex/MultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    goto :goto_f3

    .line 171
    :cond_122
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Zip files were not valid."

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_12b
    .catchall {:try_start_100 .. :try_end_12b} :catchall_50
.end method

.method private static installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .registers 14
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 240
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a6

    .line 1380
    const-string/jumbo v0, "pathList"

    .line 2057
    invoke-static {p0, v0}, Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1381
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    const-string/jumbo v3, "dexElements"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2422
    const-string/jumbo v4, "makeDexElements"

    new-array v5, v10, [Ljava/lang/Class;

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v5, v7

    const-class v6, Ljava/io/File;

    aput-object v6, v5, v8

    const-class v6, Ljava/util/ArrayList;

    aput-object v6, v5, v9

    .line 3057
    invoke-static {v1, v4, v5}, Landroid/support/multidex/MultiDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2426
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v7

    aput-object p1, v5, v8

    aput-object v2, v5, v9

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1383
    invoke-static {v1, v3, v0}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1386
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_90

    .line 1387
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 1388
    const-string/jumbo v3, "MultiDex"

    const-string/jumbo v4, "Exception in makeDexElement"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a

    .line 1390
    :cond_70
    const-string/jumbo v0, "dexElementsSuppressedExceptions"

    .line 4057
    invoke-static {p0, v0}, Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1392
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    check-cast v0, [Ljava/io/IOException;

    .line 1395
    if-nez v0, :cond_91

    .line 1396
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/IOException;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/IOException;

    .line 1409
    :goto_8d
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    :cond_90
    :goto_90
    return-void

    .line 1400
    :cond_91
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [Ljava/io/IOException;

    .line 1403
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1404
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v4, v0

    invoke-static {v0, v7, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1406
    goto :goto_8d

    .line 243
    :cond_a6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e2

    .line 4445
    const-string/jumbo v0, "pathList"

    .line 5057
    invoke-static {p0, v0}, Landroid/support/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4446
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4447
    const-string/jumbo v2, "dexElements"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5459
    const-string/jumbo v3, "makeDexElements"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v4, v7

    const-class v5, Ljava/io/File;

    aput-object v5, v4, v8

    .line 6057
    invoke-static {v1, v3, v4}, Landroid/support/multidex/MultiDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5462
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 4447
    invoke-static {v1, v2, v0}, Landroid/support/multidex/MultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_90

    .line 6469
    :cond_e2
    invoke-static {p0, p2}, Landroid/support/multidex/MultiDex$V4;->install(Ljava/lang/ClassLoader;Ljava/util/List;)V

    goto :goto_90
.end method

.method private static isVMMultidexCapable(Ljava/lang/String;)Z
    .registers 8
    .param p0, "versionString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "isMultidexCapable":Z
    if-eqz p0, :cond_2f

    .line 217
    const-string/jumbo v5, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 218
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 220
    const/4 v5, 0x1

    :try_start_17
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, "major":I
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_27} :catch_55

    move-result v3

    .line 222
    .local v3, "minor":I
    if-gt v1, v6, :cond_2e

    if-ne v1, v6, :cond_4f

    if-lez v3, :cond_4f

    :cond_2e
    move v0, v4

    .line 230
    .end local v1    # "major":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "minor":I
    :cond_2f
    :goto_2f
    const-string/jumbo v5, "MultiDex"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "VM with version "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_51

    const-string/jumbo v4, " has multidex support"

    :goto_43
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v0

    .line 222
    .restart local v1    # "major":I
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "minor":I
    :cond_4f
    const/4 v0, 0x0

    goto :goto_2f

    .line 230
    .end local v1    # "major":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "minor":I
    :cond_51
    const-string/jumbo v4, " does not have multidex support"

    goto :goto_43

    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    :catch_55
    move-exception v4

    goto :goto_2f
.end method
