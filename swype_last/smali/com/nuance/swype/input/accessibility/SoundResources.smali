.class public Lcom/nuance/swype/input/accessibility/SoundResources;
.super Ljava/lang/Object;
.source "SoundResources.java"


# static fields
.field public static final MAX_STREAMS:I = 0x1

.field public static final SOUND_END_OF_LIST:I = 0x3

.field public static final SOUND_KEY_CLICK:I = 0x2

.field public static final SOUND_OUT_OF_RANGE:I = 0x1

.field private static instance:Lcom/nuance/swype/input/accessibility/SoundResources;


# instance fields
.field private context:Landroid/content/Context;

.field private resources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->context:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->soundPool:Landroid/media/SoundPool;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->resources:Ljava/util/Map;

    .line 42
    sget v0, Lcom/nuance/swype/input/R$raw;->click1c:I

    invoke-virtual {p0, v2, v0}, Lcom/nuance/swype/input/accessibility/SoundResources;->addTrack(II)V

    .line 43
    const/4 v0, 0x2

    sget v1, Lcom/nuance/swype/input/R$raw;->click8c:I

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/accessibility/SoundResources;->addTrack(II)V

    .line 44
    sget v0, Lcom/nuance/swype/input/R$raw;->list:I

    invoke-virtual {p0, v3, v0}, Lcom/nuance/swype/input/accessibility/SoundResources;->addTrack(II)V

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/nuance/swype/input/accessibility/SoundResources;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/nuance/swype/input/accessibility/SoundResources;->instance:Lcom/nuance/swype/input/accessibility/SoundResources;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nuance/swype/input/accessibility/SoundResources;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/nuance/swype/input/accessibility/SoundResources;->instance:Lcom/nuance/swype/input/accessibility/SoundResources;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/nuance/swype/input/accessibility/SoundResources;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/accessibility/SoundResources;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/input/accessibility/SoundResources;->instance:Lcom/nuance/swype/input/accessibility/SoundResources;

    .line 32
    :cond_b
    sget-object v0, Lcom/nuance/swype/input/accessibility/SoundResources;->instance:Lcom/nuance/swype/input/accessibility/SoundResources;

    return-object v0
.end method


# virtual methods
.method protected addTrack(II)V
    .registers 8
    .param p1, "internalName"    # I
    .param p2, "resId"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->resources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public play(I)V
    .registers 5
    .param p1, "internalName"    # I

    .prologue
    .line 53
    iget-object v1, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->resources:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 54
    .local v0, "soundId":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nuance/swype/input/accessibility/SoundResources;->play(II)V

    .line 57
    :cond_16
    return-void
.end method

.method public play(II)V
    .registers 10
    .param p1, "soundId"    # I
    .param p2, "numberOfTimes"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/accessibility/SoundResources;->soundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    add-int/lit8 v5, p2, -0x1

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 61
    return-void
.end method
