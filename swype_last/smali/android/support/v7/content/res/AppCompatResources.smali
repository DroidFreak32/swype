.class public final Landroid/support/v7/content/res/AppCompatResources;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;
    }
.end annotation


# static fields
.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private static getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 105
    sget-object v3, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 106
    :try_start_3
    sget-object v2, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 107
    .local v0, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 108
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;

    .line 109
    .local v1, "entry":Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;
    if-eqz v1, :cond_32

    .line 110
    iget-object v2, v1, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 112
    iget-object v2, v1, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    monitor-exit v3

    .line 120
    .end local v1    # "entry":Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;
    :goto_2e
    return-object v2

    .line 115
    .restart local v1    # "entry":Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;
    :cond_2f
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 119
    .end local v1    # "entry":Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;
    :cond_32
    monitor-exit v3

    .line 120
    const/4 v2, 0x0

    goto :goto_2e

    .line 119
    .end local v0    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;>;"
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_b

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 79
    :cond_a
    :goto_a
    return-object v0

    .line 66
    :cond_b
    invoke-static {p0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 67
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-nez v0, :cond_a

    .line 71
    invoke-static {p0, p1}, Landroid/support/v7/content/res/AppCompatResources;->inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_43

    .line 1125
    sget-object v2, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1126
    :try_start_1a
    sget-object v1, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1127
    if-nez v1, :cond_2e

    .line 1128
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1129
    sget-object v3, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :cond_2e
    new-instance v3, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;

    .line 1132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V

    .line 1131
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1133
    monitor-exit v2

    goto :goto_a

    :catchall_40
    move-exception v1

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_1a .. :try_end_42} :catchall_40

    throw v1

    .line 79
    :cond_43
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a
.end method

.method private static inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 87
    .line 1137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1148
    sget-object v3, Landroid/support/v7/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/TypedValue;

    .line 1149
    if-nez v3, :cond_1a

    .line 1150
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1151
    sget-object v7, Landroid/support/v7/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1140
    :cond_1a
    invoke-virtual {v6, p1, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1142
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_2e

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_2e

    move v3, v5

    .line 87
    :goto_2a
    if-eqz v3, :cond_30

    move-object v3, v4

    .line 99
    :goto_2d
    return-object v3

    .line 1142
    :cond_2e
    const/4 v3, 0x0

    goto :goto_2a

    .line 92
    :cond_30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 95
    .local v2, "xml":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_38
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_41

    move-result-object v3

    goto :goto_2d

    .line 96
    :catch_41
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppCompatResources"

    const-string/jumbo v5, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 99
    goto :goto_2d
.end method
