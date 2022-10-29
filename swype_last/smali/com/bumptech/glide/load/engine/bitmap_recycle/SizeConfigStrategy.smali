.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

.field private static final RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;


# instance fields
.field private final groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap",
            "<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    const/4 v1, 0x0

    aput-object v1, v0, v3

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 35
    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 38
    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 41
    new-array v0, v3, [Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    .line 46
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    .line 172
    return-void
.end method

.method static synthetic access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V
    .registers 7
    .param p1, "size"    # Ljava/lang/Integer;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 106
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v1

    .line 107
    .local v1, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 108
    .local v0, "current":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 109
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_14
    return-void

    .line 111
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method private static getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4
    .param p0, "size"    # I
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;
    .registers 4
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    .line 117
    .local v0, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_14

    .line 118
    new-instance v0, Ljava/util/TreeMap;

    .end local v0    # "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 119
    .restart local v0    # "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_14
    return-object v0
.end method


# virtual methods
.method public final get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v6, 0x0

    .line 64
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v2

    .line 65
    .local v2, "size":I
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v4, v2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v3

    .line 3225
    .local v3, "targetKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    sget-object v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_9a

    .line 3235
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/graphics/Bitmap$Config;

    aput-object p3, v4, v6

    move-object v5, v4

    .line 3080
    :goto_1c
    array-length v7, v5

    :goto_1d
    if-ge v6, v7, :cond_90

    aget-object v8, v5, v6

    .line 3081
    invoke-direct {p0, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v4

    .line 3082
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3083
    if-eqz v4, :cond_92

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v10, v2, 0x8

    if-gt v9, v10, :cond_92

    .line 3084
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_43

    if-nez v8, :cond_8a

    if-eqz p3, :cond_90

    .line 3086
    :cond_43
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->offer(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)V

    .line 3087
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4, v8}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v3

    .end local v3    # "targetKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    move-object v0, v3

    .line 68
    .local v0, "bestKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    :goto_53
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 69
    .local v1, "result":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_79

    .line 71
    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eqz v4, :cond_96

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    :goto_76
    invoke-virtual {v1, p1, p2, v4}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 75
    :cond_79
    return-object v1

    .line 3227
    .end local v0    # "bestKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .end local v1    # "result":Landroid/graphics/Bitmap;
    .restart local v3    # "targetKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    :pswitch_7a
    sget-object v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_8888_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v5, v4

    goto :goto_1c

    .line 3229
    :pswitch_7e
    sget-object v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->RGB_565_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v5, v4

    goto :goto_1c

    .line 3231
    :pswitch_82
    sget-object v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ARGB_4444_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v5, v4

    goto :goto_1c

    .line 3233
    :pswitch_86
    sget-object v4, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->ALPHA_8_IN_CONFIGS:[Landroid/graphics/Bitmap$Config;

    move-object v5, v4

    goto :goto_1c

    .line 3084
    :cond_8a
    invoke-virtual {v8, p3}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    :cond_90
    move-object v0, v3

    goto :goto_53

    .line 3080
    :cond_92
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1d

    .line 72
    .end local v3    # "targetKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .restart local v0    # "bestKey":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :cond_96
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_76

    .line 3225
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_7e
        :pswitch_82
        :pswitch_86
    .end packed-switch
.end method

.method public final getSize(Landroid/graphics/Bitmap;)I
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 132
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 133
    invoke-static {v0, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getBitmapString(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final put(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 53
    .local v2, "size":I
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get(ILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v1

    .line 55
    .local v1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v4, v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->getSizesForConfig(Landroid/graphics/Bitmap$Config;)Ljava/util/NavigableMap;

    move-result-object v3

    .line 1172
    .local v3, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v4, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2172
    .local v0, "current":Ljava/lang/Integer;
    iget v4, v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->size:I

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v0, :cond_38

    const/4 v4, 0x1

    :goto_30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void

    .line 59
    :cond_38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_30
.end method

.method public final removeLast()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 97
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 98
    .local v0, "removed":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_19

    .line 99
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 100
    .local v1, "removedSize":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;Landroid/graphics/Bitmap$Config;)V

    .line 102
    .end local v1    # "removedSize":I
    :cond_19
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SizeConfigStrategy{groupedMap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sortedSizes=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "], "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 150
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/graphics/Bitmap$Config;Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_48
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;->sortedSizes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_60

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string/jumbo v5, ""

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_60
    const-string/jumbo v3, ")}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
