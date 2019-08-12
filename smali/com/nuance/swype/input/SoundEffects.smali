.class public Lcom/nuance/swype/input/SoundEffects;
.super Ljava/lang/Object;
.source "SoundEffects.java"


# instance fields
.field protected context:Landroid/content/Context;

.field private soundPool:Landroid/media/SoundPool;

.field private final soundPoolMap:Landroid/util/SparseIntArray;

.field private final volume:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 4
    .param p1, "size"    # I
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/nuance/swype/input/SoundEffects;->context:Landroid/content/Context;

    .line 18
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x28

    invoke-direct {v1, p1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    .line 19
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPoolMap:Landroid/util/SparseIntArray;

    .line 20
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 21
    .local v0, "mgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/SoundEffects;->volume:I

    .line 22
    return-void
.end method


# virtual methods
.method public addLoopSound(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    .line 33
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nuance/swype/input/SoundEffects;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 35
    .local v0, "soundId":I
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPoolMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 38
    .end local v0    # "soundId":I
    :cond_0
    return-void
.end method

.method public addSound(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x1

    .line 25
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nuance/swype/input/SoundEffects;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 27
    .local v0, "soundId":I
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPoolMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v3}, Landroid/media/SoundPool;->setLoop(II)V

    .line 30
    .end local v0    # "soundId":I
    :cond_0
    return-void
.end method

.method public play(I)V
    .locals 7
    .param p1, "resid"    # I

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPoolMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 43
    .local v1, "soundId":I
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nuance/swype/input/SoundEffects;->volume:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/swype/input/SoundEffects;->volume:I

    int-to-float v3, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 46
    .end local v1    # "soundId":I
    :cond_0
    return-void
.end method

.method public playLoop(I)V
    .locals 7
    .param p1, "resid"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPoolMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 51
    .local v1, "soundId":I
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nuance/swype/input/SoundEffects;->volume:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/swype/input/SoundEffects;->volume:I

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 54
    .end local v1    # "soundId":I
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    .line 69
    :cond_0
    return-void
.end method

.method public stop(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPoolMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 59
    .local v0, "soundId":I
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 60
    iget-object v1, p0, Lcom/nuance/swype/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 62
    .end local v0    # "soundId":I
    :cond_0
    return-void
.end method
