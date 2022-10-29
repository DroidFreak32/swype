.class public Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;,
        Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;
    }
.end annotation


# instance fields
.field private a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

.field private b:Z

.field private c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    iput-boolean v1, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->b:Z

    new-instance v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-direct {v0, p0, v1}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;-><init>(Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;B)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    return-void
.end method

.method private static native getCurrentEndPointerState()I
.end method

.method private static native initializeEndPointer(IIIIIIIII)V
.end method

.method private static native resetVad()I
.end method


# virtual methods
.method public detectEndPointing()Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->b:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->getCurrentEndPointerState()I

    move-result v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->getEpType(I)Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;->DETECT_NOTHING:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$EpType;

    goto :goto_c
.end method

.method public initialize(Ljava/util/Vector;)V
    .registers 11

    const/16 v4, 0x32

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput v2, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput v2, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->c:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const/16 v1, 0xf

    iput v1, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->d:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const/4 v1, 0x7

    iput v1, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->e:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->g:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const/4 v1, 0x5

    iput v1, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->h:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    const/16 v1, 0x23

    iput v1, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->i:I

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput v2, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->f:I

    if-eqz p1, :cond_155

    move v1, v2

    :goto_31
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_155

    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ep.enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v4, "Stop on end of speech is activated."

    invoke-virtual {v0, v4}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_6c
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput v3, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:I

    :cond_70
    :goto_70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_74
    const-string/jumbo v5, "ep.VadLongUtterance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "TRUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iput v3, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:I

    goto :goto_70

    :cond_94
    const-string/jumbo v5, "ep.VadHistoryLength"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->c:I

    goto :goto_70

    :cond_af
    const-string/jumbo v5, "ep.VadBeginLength"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->d:I

    goto :goto_70

    :cond_ca
    const-string/jumbo v5, "ep.VadBeginThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->e:I

    goto :goto_70

    :cond_e5
    const-string/jumbo v5, "ep.VadEndLength"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->g:I

    goto/16 :goto_70

    :cond_101
    const-string/jumbo v5, "ep.VadEndThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11d

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->h:I

    goto/16 :goto_70

    :cond_11d
    const-string/jumbo v5, "ep.VadInterSpeechLength"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_139

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->i:I

    goto/16 :goto_70

    :cond_139
    const-string/jumbo v5, "ep.VadBeginDelay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/components/general/Parameter;->getValue()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->f:I

    goto/16 :goto_70

    :cond_155
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:I

    if-ne v0, v3, :cond_15c

    move v2, v3

    :cond_15c
    iput-boolean v2, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->b:Z

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->b:Z

    if-eqz v0, :cond_18c

    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v0, v0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->a:I

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v1, v1, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->b:I

    iget-object v2, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v2, v2, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->c:I

    iget-object v3, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v3, v3, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->d:I

    iget-object v4, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v4, v4, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->e:I

    iget-object v5, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v5, v5, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->f:I

    iget-object v6, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v6, v6, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->g:I

    iget-object v7, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v7, v7, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->h:I

    iget-object v8, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->c:Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;

    iget v8, v8, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM$a;->i:I

    invoke-static/range {v0 .. v8}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->initializeEndPointer(IIIIIIIII)V

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->resetEndpointingDetection()V

    :cond_18c
    return-void
.end method

.method public isEndPointingActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->b:Z

    return v0
.end method

.method public resetEndpointingDetection()V
    .registers 2

    iget-boolean v0, p0, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->b:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/nuance/nmsp/client/sdk/oem/EndPointerOEM;->resetVad()I

    :cond_7
    return-void
.end method
